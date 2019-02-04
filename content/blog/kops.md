---
date: "2019-02-03T23:41:45-05:00"
title: "Leveraging KOPS with Amazon"
authors: ["sylus"]
categories:
  - kubernetes
tags:
  - kops
  - amazon
slug: kops
---

The following just documents how to quickly setup a Kubernetes cluster on Amazon infrastructure.

Unfortunately EKS still needs a bit of work and since you still have to play for the managed control plane, there is very little downside to using KOPS to instantiate the infrastructure.

## KOPS

* Support for variety of Kubernetes features such as feature gates
* Auto provisoned nodes
* More flexibility over Kubernetes versions

## Steps

1) Proceed to account management screen and click "Programmatic Access Screen"
2) Set up the AWS cli against IAM

```sh
aws sts get-session-token --serial-number <arn> --token-code <token>
aws configure
```

3) Take the NS records and put in Azure DNS (NS)for cloud.statcan.ca and add the 4

```sh
ID=$(uuidgen) && aws route53 create-hosted-zone --profile mfa --name <domain> --caller-reference $ID | jq .DelegationSet.NameServers
```

4) Set up the initial IAM policies for the `kops` user

```sh
aws iam create-group --profile mfa --group-name kops
aws iam attach-group-policy --profile mfa --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess --group-name kops
aws iam attach-group-policy --profile mfa --policy-arn arn:aws:iam::aws:policy/AmazonRoute53FullAccess --group-name kops
aws iam attach-group-policy --profile mfa --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess --group-name kops
aws iam attach-group-policy --profile mfa --policy-arn arn:aws:iam::aws:policy/IAMFullAccess --group-name kops
aws iam attach-group-policy --profile mfa --policy-arn arn:aws:iam::aws:policy/AmazonVPCFullAccess --group-name kops
aws iam create-user --profile mfa --user-name kops
aws iam add-user-to-group --profile mfa --user-name kops --group-name kops
aws iam create-access-key --profile mfa --user-name kops
```

5) Configure the S3 Bucket to store the etcd state

```sh
aws s3api create-bucket --profile mfa --bucket k8s-state-store --region ca-central-1 --create-bucket-configuration LocationConstraint=ca-central-1
aws s3api create-bucket --profile mfa --bucket k8s-managed-state-store --region ca-central-1 --create-bucket-configuration LocationConstraint=ca-central-1
aws s3api put-bucket-versioning --profile mfa --bucket k8s-managed-state-store --versioning-configuration Status=Enabled --region ca-central-1
aws s3api put-bucket-encryption --profile mfa --bucket k8s-managed-state-store --server-side-encryption-configuration '\{"Rules":[{"ApplyServerSideEncryptionByDefault":{"SSEAlgorithm":"AES256"}}]}'
aws s3api put-bucket-encryption --profile mfa --bucket k8s-managed-state-store --server-side-encryption-configuration '{"Rules":[{"ApplyServerSideEncryptionByDefault":{"SSEAlgorithm":"AES256"}}]}'
```

6) Instantiate the Kubernetes cluster

```sh
export NAME=<domain>
export KOPS_STATE_STORE=s3://k8s-managed-state-store

kops create cluster \
 --state=s3://k8s-inno-state-store \
 --zones ca-central-1a,ca-central-1b \
 --encrypt-etcd-storage \
 --master-size c4.large \
 --node-size m5.2xlarge \
 --ssh-public-key id_rsa.pub \
 ${NAME}

kops edit cluster ${NAME}
additionalPolicies:
master: |
  [
    {
      "Effect": "Allow",
      "Action": "iam:CreateServiceLinkedRole",
      "Resource": "arn:aws:iam::*:role/aws-service-role/*"
    },
    {
     "Effect": "Allow",
      "Action": [
        "ec2:DescribeAccountAttributes",
        "ec2:DescribeInternetGateways"
      ],
      "Resource": "*"
    }
  ]

  kops update cluster ${NAME} --yes
```

7) Helm installation and configuration of Tiller

```sh

cat <<EOF | kubectl create -f -
apiVersion: v1
kind: ServiceAccount
metadata:
 name: tiller
 namespace: kube-system
---
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
 name: tiller
roleRef:
 apiGroup: rbac.authorization.k8s.io
 kind: ClusterRole
 name: cluster-admin
subjects:
 - kind: ServiceAccount
 name: tiller
 namespace: kube-system
EOF

helm init --service-account tiller --upgrade
```
