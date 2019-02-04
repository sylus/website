---
date: "2018-07-18T22:00:27-04:00"
title: "DevSecOps"
authors: ["sylus"]
categories:
  - devsecops
tags:
  - Artifactory
  - X-Ray
  - Security
draft: true
slug: devsecops
---

## Artifactory

* Package Search in a Universal Repository (name, tag, digest, wildcards)
* Supports majority of most common programming languages (TIOBE)
* PHP
  * PHP Composer support / proxy and manage all packagist
  * Host your internal packages and index files on private PHP Composer repositories
* C/C++
  * Support conan C/C++ packae manager
  * Complete suite for management / distribution of binaries
  * Close relationship to creator of conan
  * Tight integration with visual studio
* CRAN / R
  * Supports R packages using CRAN repositories
  * Full control of deployment and resolution process of R packages
  * Secure and Local Repositories
  * Proxy Remote CRAN resources and cache downloaded R packages
  * View R package metadata
  * Deploy R sources and binaries directly in the UI
  * Version management allowing to keep older versions of the packages
  * Cross Zone Sharing enhancements
* Docker
  * Ability to promote and copy images from one repo to another in CI/CD
  * Different access privileges depending on the CI/CD peipeline
  * Artifactory will scan all major package formats that are leveraged inside container
  * Build information includes all layers including base layers, as well as dependencies
* Maven
  * Resolves longstanding issues with Maven
    * Project aggregation may lead to inconsistent deployment
    * Context matters with enhanced metadata for every build
    * Deployment flexibility and ability to run at different stages
    * Keep your POM file tidy
    * Cycle Time is too long
    * Binaries and their build pipelines should be decoupled
* CI/CD
  * Support all major CI's GitLab, Jenkins, VSTS, etc
  * Collect exhaustive build information from builds
  * Bill of Materials stored in artifactory
  * Best practices for working with Docker in a CI Pipeline
* Kubernetes
  * First class integration with Azure (AKS, ACS) etc
  * Many demos showing a full CI/CD workflow
    * Build a Java app using Gradle
    * Get base image with all dependencies
    * Get a product ready Docker image that’s ready to deploy
    * Generate a Helm chart for the build with the specific build numbers needed to deploy it
    * Pushed out to ACR and Deploy to AKS
  * Helm
    * Helm chart resolution to resolve and aggregate deps
    * Control domains for search and resolution of artifacts
    * Easy access to multiple repostiories
    * Secure and private repositories with multiple layers of fine grained access controls
    * Seperate your stable and incubator repositories
    * Use SemVer2 versioning in your charts
* Supports stricter requirements with airgap solutions (no network, one-way connection)

* Key Benefits:
  * Reliable Access: Overcome network issues restricting you from being able to download / update packages.
  * Optimized Build Process: Manage resource sharing within your organization to eliminate unnecessary network traffic.
  * Full Support for Docker: Support all Docker Registry APIs providing security features needed by enterprise Docker users.
  * Secure Solution: Enable controlled access through secure private PHP Composer repositories.
  * Smart Search and Artifactory Query Language (AQL): Find the packages you need using advanced search tools
  * Distribution and Sharing: Enable efficient distribution of proprietary packages to give developers access to the same package version, resolve dependencies, and seamlessly share proprietary code regardless of physical location.
  * Maintenance and Monitoring: Keep an organized managed system with automatic, timed cleanup processes, eliminating old artifacts.
  * Universal, End-to-End Solution: Developers use multiple protocols, build tools, packaging formats, and CI systems as part of software development, integration, and distribution processes.

### Links

* [Artifactory with an Air Gap][artifactory-airgap]
* [Benefits of Package Search][artifactory-search]
* [Code to Cloud with Artifactory and AKS][artifactory-aks]
* [Conan joins jFrog][artifactory-conan]
* [Docker Registries and Container Lifecycles in CI Pipelines][artifactory-docker-ci]
* [Packagist for PHP Development][artifactory-php]
* [Maven Deploy Plugin Trip Ups][artifactory-maven]
* [Whale parts in your Docker Registry][artifactory-docker]
* [Whitepaper on PHP Composer + Artifactory][artifactory-whitepaper-composer]
* [Accelerate R Package Development with Artifactory CRAN][artifactory-r]

## X-Ray

* Block the download of artifacts for which Xray has detected security vulnerabilities.
* Can manually set tiers to manually approve whether to release the artifact for download or not
* You can detect security vulnerabilities, performance issues across your application
* Be more reactive from the beginning of development always knowing the security of your application
* Xray is triggered to run a scan, and if any issues are detected, DevSec staff can get notified
* Issues graded via a severity level that you control and set custom alters for
* Clear messages given to developers through Rest API / UI
* X-Ray can show you all the licenses used in all indexed artifact
* Define watches to report on banned licenses being used in a project
* Docker
  * Reduce security risk running large swatch of containers often based on open source
  * All layers of an image will be scanned including the base layer
  * Don't let applications with exploitable vulnerabilities slip undetected in pipeline
  * Aqua integration with X-Ray provides end-to-end solution for securing containerized apps
  * Continous image assurance makes it possible to enforce image usage policies throughout the pipeline
  * Ensure only containers that are scanned and pass tests are allowed to be used
* CI/CD
  * Automatically fail a CI build job if it uploaded a build with vulnerabilities to Artifactory

### Links

* [Blocking downloads with Artifactory / X-Ray][block-downloads]
* [Sweet Dreams with Open Source Licensing][xray-licenses]
* [Xray and Aqua Keeping Your Containers Safe][xray-aqua]
* [JFrog Xray CI/CD Integration][xray-cicd]

## Migrating from Nexus

* Migrate from Nexus using nexus2art migrator tool
* Friendly wizard like interface for transferring data
* Data can include instance repositories, artifacts, users, and settings
* Migrator is intelligent enough to validate all naming conventions and repo types
* Any kind of validation failure will be highlighted
* Below is the current full feature-set of nexus2art:
  * Migrate users, groups, and privileges
  * Migrate scheduled tasks
  * Migrate other instance-wide settings
  * Support paid Nexus features, such as custom metadata
  * Modify virtual repository child lists
  * Modify repository package types
  * Remove the dependency on the JFrog CLI
  * Obfuscate passwords in save files
* Case Study move to Artifactory OpenMRS

### Links

* [Migrating from Nexus to Artifactory][artifactory-migrate]
* [OpenMRS migrates to Artifactory][actifactory-migrate-openmrs]


Dev Part of DevSecOps (Secure DevOps)

1) GitLab
2) Jenkins
3) Actors
4) How to maintain it
5) What releases like build / deploy
6) Syscon for each component and how this particular component behaves

<!-- Links Referenced -->

[artifactory-airgap]:                 https://jfrog.com/blog/using-artifactory-with-an-air-gap/
[artifactory-aks]:                    https://jfrog.com/blog/from-code-to-cloud-with-jfrog-artifactory-and-azure-aks/
[artifactory-conan]:                  https://jfrog.com/blog/conan-joins-jfrog/
[artifactory-docker]:                 https://jfrog.com/blog/whale-parts-docker-registry/
[artifactory-docker-ci]:              https://jfrog.com/blog/docker-registries-container-lifecycles-artifactory-ci-pipelines/
[artifactory-php]:                    https://jfrog.com/blog/using-satis-packagist-php-development-think-jfrog-artifactory/
[artifactory-r]:                      https://jfrog.com/blog/accelerate-r-package-development-with-artifactory-cran-repositories/
[artifactory-search]:                 https://jfrog.com/blog/blocking-downloads-with-artifactory-and-xray/
[artifactory-maven]:                  https://jfrog.com/blog/dont-let-maven-deploy-plugin-trip-you/
[artifactory-migrate]:                https://jfrog.com/blog/migrate-nexus-artifactory-manage-binaries-better/
[artifactory-migrate-openmrs]:        https://jfrog.com/blog/openmrs-migrates-from-nexus-to-artifactory-and-bintray/
[artifactory-whitepaper-composer]:    https://jfrog.com/whitepaper/php-composer-9-benefits-of-using-a-binary-repository-manager/
[block-downloads]:                    https://jfrog.com/blog/blocking-downloads-with-artifactory-and-xray/
[xray-aqua]:                          https://jfrog.com/blog/xray-aqua-keeping-containers-safe-waters/
[xray-cicd]:                          https://jfrog.com/blog/jfrog-xray-cicd-integration-keeping-builds-safe/
[xray-licenses]:                      https://jfrog.com/blog/sweet-dreams-with-open-source-licensing/
