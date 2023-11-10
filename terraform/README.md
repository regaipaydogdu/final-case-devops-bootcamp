## Deploy Application to AWS with Terraform

**_Built with;_**

[![kubernetes][#kubernetes]][@kubernetes] [![react][#react]][@react]

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
<br>
<p ><img src="https://github.com/regaipaydogdu/final-case-devops-bootcamp/blob/main/assets/images/kubernates-run-manifest.PNG" alt="Kubernates"></a></p>
<br>

After running the commands, we can access the application.

![Kubernates React][#kubernates-react]



[#kubernates-react]: https://github.com/regaipaydogdu/final-case-devops-bootcamp/blob/main/assets/images/react-kubernates-gif.gif

[#react]: https://img.shields.io/badge/React-20232A?style=flat&logo=react&logoColor=61DAFB
[#docker]: https://img.shields.io/badge/Docker-2CA5E0?style=flat&logo=docker&logoColor=white
[#kubernetes]: https://img.shields.io/badge/Kubernetes-326ce5.svg?&style=flat&logo=kubernetes&logoColor=white

[@react]: https://reactjs.org/
[@docker]: https://www.docker.com/
[@kubernetes]: https://kubernetes.io/
