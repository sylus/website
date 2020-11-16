---
title: Resumé
description: Cloud Architect with a passion for Open Source technologies seeking to gain both new experiences and knowledge in order to increase overall technological skill set. Passions include leveraging Cloud Native tools such as Kubernetes, Open Policy Agent, and Kubeflow
menu: main
weight: -210
tags:
  - resume
toc: true
---

## Highlights

1. Open Source contributions on GitHub

  - [canada-ca-terraform-modules](https://github.com/canada-ca-terraform-modules)
    - Azure Kubernetes Service // [Infrastructure](https://github.com/canada-ca-terraform-modules/terraform-kubernetes-aks) / [Platform](https://github.com/canada-ca-terraform-modules/terraform-kubernetes-aks-platform)
    - IBM Kubernetes Service &nbsp;&nbsp;&nbsp;// [Infrastructure](https://github.com/canada-ca-terraform-modules/terraform-kubernetes-iks) / [Platform](https://github.com/canada-ca-terraform-modules/terraform-kubernetes-iks-platform)
  - [wxt](https://github.com/drupalwxt)
    - [Composer Project for Drupal WxT](https://github.com/drupalwxt/site-wxt)
    - [WxT Installation Profile](https://github.com/drupalwxt/wxt)
    - [Helm for DrupalWxT](https://github.com/drupalwxt/helm-drupal)
  - [statcan](https://github.com/statcan)
    - [Charts](https://github.com/statcan/charts)
    - [Data Analytics as a Service](https://github.com/statcan/daaas)
    - [GateKeeper Policies](https://github.com/statcan/gatekeeper-policies)
    - [Kubeflow Containers](https://github.com/statcan/kubeflow-containers)
    - [Kubeflow Manifest](https://github.com/statcan/kubeflow-manifest)

2. Cloud Technical Architect at Statistics Canada (Current)

  - Technical Architect of Cloud Native team at Statistics Canada
  - Developed Concept of Operations for Kubernetes Cloud Native Platform used internally and shared with other departments
  - Recieved Authority to Operate (ATO) for Kubernetes Cloud Native Platform through met Security Controls
  - Recieved GCEARB approval for Kubernetes Cloud Native Platform

3. Drupal Technical Architect at Statistics Canada (Previous)

  - Launched the [Statistics Canada Portal][statcan] on Drupal
  - Launched [Open Government Portal][opendata] on Drupal

## Presentations

1. Presented the Data Analytics as a Service Platform at Stratosphere 2020
   - [PDF](https://govcloud.blob.core.windows.net/docs/daaas-cncf.pdf) / [YouTube](https://www.youtube.com/watch?v=quYuuEAqNm0)
2. Presented a two day course at the School of Public Service's Digital Academy on Cloud Native technologies
   - [PDF](https://govcloud.blob.core.windows.net/docs/digital-academy.pdf) / [YouTube](https://www.youtube.com/watch?v=QvMWls8OdmM)

## Education

**Honors, Bachelor of Computer Science, Carleton University <br> // Minor in Psychology <br> // September 2006 – August 2010**

Graduate of Computer Science program at Carleton University in the software and computing stream, with focus on both human-computer interaction and software engineering. My Honors project was done in the HCI lab involving creation of a mobile app (cordova) delivering a narrative based geolocative storyline. Other courses that were of particular interest to me included Computer Graphics, and Programming Paradigms.

**Game Development, Algonquin College <br> // September 2004 - June 2006**

Completed 2 of 3 years in game development program at Algonquin College before transferring into the Bachelor of Computer Science program at Carleton University. Areas of study included both DirectX, Open GL, and Object Oriented Programming with C++. One of the more interesting projects was to create and render a chess board with all of the associated rulesets.

## Work

**Government of Canada: Statistics Canada ([statcan.gc.ca][statcan], [open.canada.ca][opendata]) <br> // March 2011 – Present**

**Cloud Operations Team (2018 - Present)**

Technical Architect with a focus on containerization and Kubernetes. Notable job functions include the following:

1. Administration, support, and maintenance of multiple Kubernetes clusters on Azure (AKS, ACS Engine)
2. Onboarding of teams towards a micro services approach through containerization and cloud native tooling
3. Creation of various docker images, often along with a corresponding Helm chart. (Drupal, Hadoop w/Hive, NiFi, Kylo, etc)
4. Providing a full CI/CD pipeline either through VSTS, Jenkins and/or GitLab CI with Kubernetes integration
5. DevTest Labs workflow leveraging formulas / artifacts (calling ansible playbooks) to fully provision a VM
6. SAS containerization and workflow improvements
7. JupyterHub for Kubernetes integration
  - LDAP
  - WxT theming support
  - Notebooks for Python, Tensorflow, Stata, SAS, etc
8. Facilitating container security through tools such as Artifactory, XRay

**Web Content Management Team (2011 - 2017)**

Technical Architect with a focus on improving content delivery leveraging Drupal. Notable job functions include the following:

1. Technical Architect of Drupal portal for **[open.canada.ca][opendata] (2013-2018)**
  - Architected both Drupal 7/8 versions of the portal
  - Maintained, monitored and administered portal for a period of 5 years
  - Tight integration between Drupal + Search API / Solr
  - Custom integration bewtween Drupal + CKAN leveraging JsonAPI
  - Various interactive components including blog, rating, and submission of apps
  - Access to Information and all of its associated faceted displays
  - Server load and performance testing
  - Redesign / Re-architecture to support the various theme updates to WxT
2. Technical Architect of Drupal portal for **[statcan.gc.ca][statcan] (2011-2018)**
  - Technical architect for both Drupal 7/8 versions of the portal
  - Maintained, monitored and administered portal for a period of 7 years
  - Creation of the Drupal WxT variant to share with other departments
  - Migration of 100,000+ html pages and other content into the CMS while performing data cleansing and validation (HTML5)
  - Adherance to WCAG 2.0 AA and Government of Canada web standards
  - Developed a distirbuted content staging model using web services, rest via json, and UUID
  - Ensure the platform provides extensive multilingualism support across both the front and back end interfaces
  - Assisted in development of the new Dissemination Model to make finding data on portal easier to find
  - Work alongside a contractor on extending Drupal to be more of an output metadata framework powered by REST

**Open Plus ([openplus.ca][openplus]) <br> // September 2010 – March 2011 (Full Time) <br> // March 2011 – Present (Contract, Part Time)**

Developer for Open Plus a web development firm advocating Open Source technology. Responsibilities include interacting with different type of clients (NGO, Government, and Private Sector) and implementing a wide array of technical solutions particularly enterprise content management systems (CMS) as well as enterprise search leveraging either **ElasticSearch** / **Solr**. Enterprise hosting is largely facilitated through Amazon EC2. Recent work within the last 5 years at Open Plus have included:

1. Research and development for upcoming clients:
  - Integration with [Orcid API][orcid] into Drupal 8
  - Improved ui / patterns for migrating content via NodeJS (express / cheerio) + migrate (Drupal)
2. Development for the Ontario Public Service Employee Union website ([opseu.org][opseu]):
  - Consulted in the design and architecture
  - Migrated content from a internal xml based cms (LifeRay) into Drupal
  - Integration with Apache Solr along with improvements to search processors and mappings
3. Consulting for the University of Ottawa website ([uottawa.ca][uottawa]):
  - Providing guidance on server architecture, CI/CD best practices, as well as provisioning
  - Migrated content into the Faculty of Medicine website
4. Consulting for City of Ottawa ([ottawa.ca][ottawa]):
  - Providing guidance on server architecture
  - Assisted in migration of thousands of legacy content across disparate services into Drupal
5. Development for the Standards Council of Canada website ([scc.ca][scc]):
  - Assisted in the design and overall architecture
  - Indexed content in Apache Solr from a variety of back ends including Oracle, Microsoft SQL Server, REST, and RSS

**Carleton University: Carleton Library ([library.carleton.ca][carleton-library]) <br> // December 2009 - July 2010**

Web Developer tasked with creating a new Carleton Library site alongside the Senior Web Developer using the Drupal Content Management System. The tasks consist of porting all the content from the old library site into Drupal all the while making the markup more accessible to screen readers and allowing for the users of the library to more easily find the information they were looking for.

## Awards

### Public Service Excellence Award 2014

Received the public service excellence award in the “Excellence in Citizen Focused Delivery” category from the Governor General for my work on the Open Data platform ([open.canada.ca][opendata]).

### Team of the Year Award 2014

Received the team of the year at Statistics Canada for my work on the Open Data platform ([open.canada.ca][opendata]).

### GTEC Winner 2014

Won for Category 1: Excellence in Public Service Delivery – External for the Next Generation Open Data Portal. A joint effort between Statistics Canada and the Treasury Board Secretariat.

### GTEC Honoree 2013

Received an Honoree nomination at GTEC under the category of “Collaboration around a Web Content Management Framework for Government and Public Institutions”. This was a joint submission by Statistics Canada, Canadian Transportation Agency, University of Ottawa, and the City of Ottawa.

### A+ Certified Professional

Years of experience leading to a designation as a computing certified technician from COMPTIA.

## References

References are available upon request.

<!-- Links Referenced -->

[carleton-library]:       https://library.carleton.ca
[chocolately]:            https://github.com/Azure/acs-engine/pull/2707
[drupal]:                 https://github.com/docker-library/drupal/graphs/contributors
[gh-govcloud]:            https://github.com/govcloud
[govcloud]:               https://govcloud.ca
[meetup]:                 https://www.meetup.com/goc-cloud-native
[hadoop]:                 https://github.com/kubernetes/charts/pull/6688
[nifi]:                   https://github.com/kubernetes/charts/pull/5772
[octopus]:                https://github.com/helm/charts/pull/7769
[kylo]:                   https://github.com/kubernetes/charts/pull/5773
[opendata]:               https://open.canada.ca
[openplus]:               https://openplus.ca
[opseu]:                  https://opseu.org
[orcid]:                  https://orcid.org/organizations/integrators/API
[ottawa]:                 https://ottawa.ca
[statcan]:                https://statcan.gc.ca
[scc]:                    https://www.scc.ca
[uottawa]:                httpa://uottawa.ca
[wet-boew-drupal]:        https://github.com/wet-boew/wet-boew-drupal
[wetkit]:                 https://drupal.org/project/wetkit
[wxt]:                    https://github.com/drupalwxt/wxt
[wxt-d7]:                 https://drupal.org/project/wetkit
[wxt-d8]:                 https://drupal.org/project/wxt
[youtube]:                https://www.youtube.com/channel/UC00nN9hhb4q6IChP8yEIzGA
