## Deploy Application to Kubernates

**_Built with;_**

[![docker][#docker]][@docker] [![kubernetes][#kubernetes]][@kubernetes] [![react][#react]][@react]

### :file_folder: Kubernates Manifest Files

This project includes manifest files for namespace, deployment, and service.This directory houses the essential manifest files needed to create deployment and service.<br>

| Files | Description|
| :-------- |:------------------------- |
| `namespace.yml` |Manifest file to create namespace.|
| `deployment.yml` |Manifest file to create deployment.|
| `service.yml` |Manifest file to create service.|

### :hammer: Run

To create a namespace, deployment, and service, execute the following commands


To create a namespace;

```bash
  kubectl create -f namespace.yml
```
To create a deployment;

```bash
  kubectl create -f deployment.yml
```
To create a service;

```bash
  kubectl create -f service.yml
```



![Gitlab CI/CD Runner AWS][#gitlab-runner-aws]
<br>
<br>
<p align="center"><img src="https://github.com/regaipaydogdu/final-case-devops-bootcamp/blob/main/assets/images/gitlab-runners.PNG" alt="Gitlab Runner"></a></p>






[#gitlab-runners]: https://github.com/regaipaydogdu/final-case-devops-bootcamp/blob/main/assets/images/gitlab-runners.PNG
[#gitlab-runner-aws]: https://github.com/regaipaydogdu/final-case-devops-bootcamp/blob/main/assets/images/gitlab-runner-aws.png

[#react]: https://img.shields.io/badge/React-20232A?style=flat&logo=react&logoColor=61DAFB
[#docker]: https://img.shields.io/badge/Docker-2CA5E0?style=flat&logo=docker&logoColor=white
[#kubernetes]: https://img.shields.io/badge/Kubernetes-326ce5.svg?&style=flat&logo=kubernetes&logoColor=white

[@react]: https://reactjs.org/
[@docker]: https://www.docker.com/
[@kubernetes]: https://kubernetes.io/
