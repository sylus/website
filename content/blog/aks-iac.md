---
date: 2018-07-01T06:00:00+06:00
lastmod: 2018-07-01T17:30:00+06:00
title: "AKS: Infrastructure as Code"
authors: ["sylus"]
categories:
  - AKS
tags:
  - azure
  - AKS
slug: aks/iac
---

Azure Kubernetes Service (**AKS**) is now general availability (**GA**) and with that announcement a slew of longstanding issues have been addressed! Most importantly you can now leverage a custom vnet and RBAC with your cluster. These were key blockers for many organizations fully going down the AKS route as opposed to ACS Engine where you still have the master node under your purview.

Notably the **AKS** workflow in the Azure portal has been noticably improved and for quick one-off installations I would recommend going that route. Of course for production type deployments always following the infrastructure as code methodology is indeed the way to go! The following templates setup a vnet in a separate "production" resource group where the subnet is given to the actual **AKS** deployment.

* [AKS ARM templates][aks-arm]

## Create VNET resources

Specify the name of your resource group that the custom virtual network resides in.

```sh
export AKS_VNET_RG=network-production-rg
export AKS_VNET_LOCATION=eastus
```

If the resouce group was not created beforehand you can simply create it now.

```sh
az group create -n ${AKS_VNET_RG} \
                -l ${AKS_VNET_LOCATION}
```

We can now instantiate the custom vnet template that will create both a local and containers subnet.

```sh
az group deployment create -n aks-managed-vnet \
                           -g ${AKS_VNET_RG} \
                           --template-file kube-vnet.json \
                           --parameters kube-vnet.parameters.json
```

## Service Principal

Grant the AKS cluster Service Principal access to our custom virtual network using the resource group.

```sh
az ad sp create-for-rbac --name aks-sylus
```

```sh
az role assignment create --role=Contributor \
                          --scope=/subscriptions/SUBSCRIPTION_ID/resourceGroups/${AKS_VNET_RG} \
                          --assignee SP_CLIENTID
```

# Create AKS cluster

In order to create a managed AKS cluster leveraging the custom vnet simply fill out the missing parameters in the `kube-managed.parameters.json` file. These parameters include but are not limited to the following:

* dnsPrefix
* resourceName
* servicePrincipalClientId
* servicePrincipalClientSecret
* sshRSAPublicKey
* vnetSubnetID

```sh
export AKS_RG=aks-sylus-rg
export AKS_NAME=aks-managed-sylus
```

```sh
az group create -n ${AKS_RG} \
                -l ${AKS_VNET_LOCATION}
```

```sh
az group deployment create -n ${AKS_NAME} \
                           -g ${AKS_RG} \
                          --template-file kube-managed.json \
                          --parameters kube-managed.parameters.json
```

# Common Operations

Establish the kubeconfig context and retrieve cluster configuration.

```sh
export AKS_RG=aks-sylus-rg
export AKS_NAME=aks-managed-sylus
```

```sh
az aks get-credentials --resource-group ${AKS_RG} \
                       --name ${AKS_NAME}
```

Similarly to `kubectl proxy` with launch and open the Kubernetes dashboard.

```sh
az aks browse --resource-group ${AKS_RG} \
              --name ${AKS_NAME}
```

Will delete the managed cluster service alongside with all its dependencies.

```sh
az group delete --name ${AKS_RG}
```

This will enable dev spaces for the deployed AKS cluster.

```sh
az aks use-dev-spaces -g ${AKS_RG} \
                      -n ${AKS_NAME} \
                      -s develop/sylus -y
```

<!-- Links Referenced -->

[aks-arm]:       https://github.com/sylus/aks-iac
