---
title: "Resume"
meta_title: ""
description: "Senior Cloud Architect (IT-04) and open source advocate working for the Government of Canada."
author: "William Hearn"
tags: ["resume"]
draft: false
---

{{< toc >}}

## About

Senior Cloud Architect (IT-04) and open source advocate working for the Government of Canada.

Passions include leveraging Cloud Native (CNCF) technologies such as Kubernetes, Argo CD and Cilium.

## Highlights

### Open Source contributions on GitHub

- [sylus](https://github.com/sylus)
  - [dotfiles](https://github.com/sylus/dotfiles)
- [canada-ca-terraform-modules](https://github.com/canada-ca-terraform-modules)
  - [Managed MySQL Flexible Server](https://github.com/canada-ca-terraform-modules/terraform-azurerm-flex-mysql)
  - [Managed PostgreSQL Flexible Server](https://github.com/canada-ca-terraform-modules/terraform-azurerm-flex-postgresql)
- [statcan](https://github.com/statcan)
  - [Kubeflow Manifests](https://github.com/statcan/aaw-kubeflow-manifests)
  - [Kubeflow Containers](https://github.com/statcan/aaw-kubeflow-containers)
  - [GateKeeper Policies](https://github.com/statcan/gatekeeper-policies)
  - [Charts](https://github.com/statcan/charts)
  - [Argo Controller](https://github.com/statcan/argo-controller)
- [wxt](https://github.com/drupalwxt)
  - [Drupal WxT](https://github.com/drupalwxt/wxt)
  - [Composer Project for Drupal WxT](https://github.com/drupalwxt/site-wxt)
  - [Helm for Drupal WxT](https://github.com/drupalwxt/helm-drupal)

### Senior Cloud Architect (IT-04) at Statistics Canada

- Managed diverse Kubernetes clusters across the entire Software Development Life Cycle (SDLC)
  - Currently 5+ years, including critical business workloads running on production clusters.
- Senior Cloud Architect (IT-04) of Cloud Native Solutions @ Statistics Canada
- Successfully obtained Authority to Operate (ATO) for the Cloud Native Platform (Kubernetes)
  - Worked with Cyber Security Division and external security vendors to meet stringent security and compliance controls
  - Developed the Concept of Operations for the Cloud Native Platform
- Secured GCEARB approval for the Cloud Native Platform, ensuring adherence to standardized government architectural principles

### Senior Drupal Technical Architect (IT-03) at Statistics Canada

- Successfully migrated and deployed the [Statistics Canada Website](https://statcan.gc.ca) onto Drupal
  - Open sourced this work which eventually become the Drupal WxT distribution in use by numerous others departments
  - Demonstrated longevity and resilience, continuously evolving for almost a decade, with multiple successful upgrades and enhancements
- Successfully launched the [Open Government Portal](https://open.canada.ca) onto Drupal
  - Achieved seamless integration between the project and both CKAN and its underlying Solr layer
  - Ensuring efficient data management and robust search / faceting capabilities

## Presentations

1. Presented the Data Analytics as a Service Platform at Stratosphere 2020
   - [YouTube](https://www.youtube.com/watch?v=quYuuEAqNm0)

## Education

### Honors, Bachelor of Computer Science, Carleton University

// September 2006 – August 2010 <br>
// Minor in Psychology

I graduated from the Computer Science program at Carleton University, specializing in software and computing with a minor in Psychology. Throughout my studies, I focused on two key areas: human-computer interaction and software engineering. Notably, my Honors project was carried out in the HCI lab, where I developed a mobile app using Cordova that delivered an engaging narrative-based geo-locative storyline that also leveraged QR codes. Additionally, I found great interest in courses such as Computer Graphics and Programming Paradigms, which further enriched my academic experience.

### Game Development, Algonquin College

// September 2004 - June 2006

Completed half of a three year program in the game development program at Algonquin College, before I made the decision to transfer into the Bachelor of Computer Science program at Carleton University. During my studies, I delved into subjects such as DirectX, OpenGL, and Object-Oriented Programming with C++, while engaging in projects that involved developing various games. One of the notable projects was the re-creation of a chess game from scratch and implemented both the design and rule-sets.

## Language Proficiency

- Bilingual in English and French (Second Language)
- BBB assessed by the Public Service Commission

## Security Clearance

- Secret (Level II)

## Technical Skills

- Languages: Go, PHP, HTML, CSS, TypeScript, SQL, C#, C/C++, Python
- Tools: Git, GitLab / GitLab CI, Helm, Kubernetes, Terraform
- Frameworks: Drupal, CKAN, Solr, Vue.js
- Operating systems: Linux (Alpine, Debian/Ubuntu), Mac OS and Windows

## Work

### Statistics Canada

#### [2019-11 to Present] Cloud Native Solutions Team

Senior Cloud Architect (IT-04) for the Cloud Native Solutions (CNS) team, specializing in enhancing the Kubernetes-based Cloud Native Platform (CNP) and empowering Solution Builders for greater innovation and efficiency.

Cloud Native Platform:

- Enhanced the Cloud Native Platform (2.0) through comprehensive architectural improvements and robust security measures
- Achieved Authority to Operate (ATO) for the CNP and its components by collaborating closely with the Cyber Security Division (CSD)
- Facilitated independent security audits and penetration testing to ensure platform resilience
- Led the transition to an updated GitOps deployment model for the CNP using Argo CD
- Enhanced the security, networking, and observability of the CNP by leveraging Istio (service mesh) and Cilium (networking layer)
- Implemented a Zero Trust architecture at the namespace level using Fortigate and Azure SDN connector
- Streamlined security compliance for developers by inheriting security controls from the platform, easing the SA&A process

Advanced Analytics Workspaces:

- Creation of an advanced data analytics environment on top of the CNP using Kubeflow via Argo CD
- Creation of custom container images built for Kubeflow providing support for SAS, RStudio, and Jupyter Notebooks
- Extended the capabilities of Kubeflow by developing custom controllers to enhance automation for ML-related deployments.
- Collaborated with data scientists and analysts to tailor the environment for specific analytics and machine learning needs
- Optimized resource allocation and scaling to handle large-scale data processing tasks efficiently

DevSecOps:

- Enhanced the developer experience for all solution builders through continuous improvements to the CNP, establishing it as the organizational standard
- Collaborated on DevSecOps-oriented CI/CD pipelines, streamlining onboarding processes and ensuring efficient code integration and delivery
- Maintained and enhanced automation and onboarding processes for Horizontal Services, including Artifactory, Argo CD, GitLab (CI), and Vault
- Conducted research on Backstage, progressing towards a self-service developer portal for common tasks to improve developer productivity and autonomy
- Provided ongoing expert guidance on best practice application architecture to Solution Builders, ensuring optimal design, performance, and security
- Implemented security-as-code practices, integrating security measures directly into CI/CD pipelines to ensure compliance and reduce vulnerabilities
- Developed comprehensive documentation and training materials to support developers in adopting DevSecOps practices and utilizing the CNP effectively
- Leveraged infrastructure as code (IaC) tools to automate the provisioning and management of cloud resources, ensuring consistency and reducing errors

#### [2018-06 to 2019-11] Enterprise Cloud Services Division

Cloud Architect (IT-03) for the Enterprise Cloud Services Division (ECSD) with a focus on open source and proving how Cloud Native (CNCF) technologies such as Kubernetes can help to improve service delivery for Canadians.

Cloud Native Platform:

- Built an enterprise-level, Protected B Cloud Native Platform (PBMM) using Kubernetes and CNCF technologies
- Obtained an interim Authority to Operate (iATO) by working closely with the Cyber Security Division (CSD)
- Answered hundreds of Security Controls and completed the full Security Assessment and Authorization
- Created a detailed Concept of Operations document that was shared across many departments
- Started to plan the organizational structure of what a Cloud Native Solutions team would benefit the department
- Designed, deployed, secured, and operated Kubernetes clusters across the SDLC
- Leveraged both infrastructure and configuration as code technologies to enable internal operations

Improved Application Onboarding:

- Deployed and maintained Horizontal Services such as Artifactory, Argo CD, GitLab (CI), Jira / Confluence and Vault
- Assisted solution builders on building net new distributed applications adopting DevSecOps and Containerization
- Provided guidance and application templates for applications across various programming stacks
- Assisted with the creation, modification, and deployment of applications using tools such as Helm or Kustomize

Knowledge Sharing as a Pathfinder:

- Presented at numerous government events including Stratosphere multiple times
- Taught at the Public Service's Digital Academy a full 2 day course
- Open Sourced the majority of our work in the GC Accelerators and StatCan GitHub organization
- Provided ongoing support for any questions asked by departments in Cloud Native development

#### [2011-06 to 2018-06] Web Content Management System Team

Technical Architect (IT-03) within the WCMS team at Statistics Canada, specializing in open source solutions and playing a key role in the development of the government-wide Drupal distribution known today as Drupal WxT.

Development of the [open.canada.ca][opendata] for the Government of Canada's Open Data initiative:

- Integration of Drupal with Solr using Views for an improved search
- Integration between Drupal and CKAN through REST
- Creation of interactive components including blog, comments, ratings and app submissions
- Improve the access to information content and information architecture
- Server load and performance testing to handle peak traffic
- Work closely alongside members from TBS and implementing their vision

Development of the New Dissemination Model for [statcan.gc.ca][statcan]:

- Focus on improving the UX to make finding data on the main portal easier to find
- Work on enhancing Drupal as an output metadata framework powered by REST
- Tight integration between Drupal and CKAN through REST
- Coordination with business clients to integrate the new GIS mapping system

Development and migration of [statcan.gc.ca][statcan] to Drupal:

- Successfully led the migration of the main website to Drupal and then later to Drupal 8
- Collaboration with a large team to implement features on both Internet / Intranet
- Migration of 100,000+ HTML pages into Drupal with markup and data cleansing
- Implementation of a reliable and secure content staging model using REST and UUID
- Compliance to WCAG2 AA and Government of Canada web standards (C&IA)
- Improved multilingual support on both the front / back-end interfaces
- Drupal bug fixes and security updates along the full SDLC
- Supported the various theme updates to wet-boew
- Perform RCA for any system degradations and outages
- Utilize GitLab (CI) for source code management and CI/CD
- Development of multiple web applications to support business clients

### Open Plus

#### [2011-03 to Present] Technical Consultant

Technical Consultant for [Open Plus][openplus] where initially my focus was on leveraging Drupal and Solr to craft websites for an array of clients, including government departments. However, my responsibilities have since evolved and now I focus more on the Cloud largely working with Microsoft Azure and integrating modern DevOps practices. In addition I have helped the development of a managed Drupal platform powered by Kubernetes and other CNCF technologies to deliver highly efficient and scalable solutions for the business clients.

### Open Source

#### [2013-09 to Present] Open Source Developer

- Led and maintained the Drupal WxT distribution, a widely used Open Source solution in the Government of Canada, for over a decade
- Supported upgrade paths from Drupal 8 to 10 within the Drupal WxT distribution
- Ensured ongoing compliance with Web Content Accessibility Guidelines (WCAG) AA standards
- Collaborated with a diverse team of often remote developers, designers, and stakeholders to implement new features, fix issues, and enhance the overall functionality
- Actively participated in the Drupal community by contributing code, sharing knowledge, and engaging in discussions to improve Drupal
- Stayed up-to-date with the latest trends and best practices in Open Source development, Drupal, and web technologies
- Mentored and onboarded new developers to the Drupal WxT project, fostering a collaborative and supportive development environment

## Awards

### Excellence in Service Delivery Award

// 2021

Received the Excellence in Service Delivery Award as part of the Cloud Team in recognition of outstanding service that has enhanced Statistics Canada's work and reputation amount Canadians.

### Employee Recognition Award

// 2019

Received the Employee Recognition Award as part of the Cloud Team for a distinguished contribution to the effectiveness of Statistics Canada upon moving many Production workloads including the main website to the Cloud.

### Public Service Excellence Award

// 2014

Received the prestigious **Public Service Excellence Award** in the Excellence in Citizen Focused Delivery category from the Governor General. The award was a recognition of exceptional contributions to the development of the Open Data platform ([open.canada.ca][opendata]).

### Team of the Year Award

// 2014

Received the team of the year award at Statistics Canada for the work the team has contributed to the Open Data platform ([open.canada.ca][opendata]) and Statistics Canada's main website ([statcan.gc.ca][statcan]).

### GTEC Winner

// 2014

Won for Excellence in Public Service Delivery for the Next Generation Open Data Portal. A joint submission between Statistics Canada and the Treasury Board Secretariat.

### GTEC Honoree

// 2013

Received an Honoree nomination at GTEC under the category of “Collaboration around a Web Content Management Framework for Government and Public Institutions”. This was a joint submission by Statistics Canada, Canadian Transportation Agency, University of Ottawa, and the City of Ottawa.

### Merit Award

// 2013

Recieved the merit award at Statistics Canada in recognition of an exceptional and distinguished contribution to the effectiveness of Statistics Canada

### A+ Certified Professional

Years of experience leading to a designation as a computing certified technician from COMPTIA.

## References

References are available upon request.

<!-- Links Referenced -->

[opendata]:               https://open.canada.ca
[openplus]:               https://openplus.ca
[statcan]:                https://statcan.gc.ca
