# Logo Yazılım & Fırat Üniversitesi LOG-in DevOps Bootcamp

## Final Project

### :notebook: Notes

This README file provides general information. Each project directory has its individual README file.

**_Built with;_**

[![aws][#aws]][@aws] [![docker][#docker]][@docker] ![gitlab][#gitlab] [![kubernetes][#kubernetes]][@kubernetes] [![react][#react]][@react]  [![terraform][#terraform]][@terraform] 

### :open_book: **Table of Contents**

1. [Tasks](#hash-assignment-)
   - [Assignment](#ballot_box_with_check-essential-tasks)
   - [Deploy Application to AWS](#asterisk-optional-tasks)
   - [Deploy Application to Kubernates](#asterisk-optional-tasks)
   - [Bonus](#asterisk-optional-tasks)
2. [GitLab CI/CD Configuration](#notebook_with_decorative_cover-overview-)
3. [GitLab Pipeline](#sparkles-featured-)
4. [Directory Content](#open_file_folder-directory-content-)

### :hash: **Tasks**

> Fully cover the DevOps cycle and create a full-on CI/CD and cloud infrastructure.

#### :ballot_box_with_check: **Assignment**

> 1. Create a basic React.js application
> 2. Create a Dockerfile for application.Try to form an image with the smallest possible size.
> 3. Design and write a GitLab CI/CD pipeline featuring Dockerfile for application.

#### :ballot_box_with_check: **Deploy Application to AWS**

> 1. Use Terraform to provision the infrastructure.
> 2. Application should be running on ECS Fargate.
> 3. Make sure to use the ideal VPC and security group settings.
> 4. Application load balancer must be configured in front of the service.

#### :ballot_box_with_check: **Deploy Application to Kubernates**

> 1. Write the required core manifest files

#### :ballot_box_with_check: **Bonus**

> 1. Configure auto-scaling onto your Fargate instance. Scale-up when CPU is above %50 and scale-down when CPU is below %20.
> 2. Create the proper Cloudwatch dashboards and metrics for monitoring the performance of the application.
> 3. Draw your AWS architecture, explain the connections and relations between your configured services.
> 4. Instead of using GitLab's shared runners, you can configure your own runner.


#### _Infrastructure Visualization_

![AWS Infrastructure Diagram][#drawio]

### :open_file_folder: **Directory Content** [🔝][@jump-to-top]

```
/           : Gitlab CI/CD parent pipeline manifest.
.github/    : Github Actions workflow manifests, issue and pull request templates.
.gitlab/    : Terraform deployment manifest, self-hosted runner configuration.
ansible/    : Simple shell script for checking the disk usage and sending email alerts.
assets/     : AWS infrastucture diagram draw.io export.
docker/     : React application, Dockerfiles for production and development environments.
k8s/        : Kubernetes deployment manifests.
terraform/  : Modular Terraform Stack featuring most AWS services.
```





















[#gitlabci-pipeline]: ./assets/images/gitlabci-pipeline.PNG
[#gitlabci-variables]: ./assets/images/gitlabci-variables.png

[#gitlab]: https://img.shields.io/badge/GitLab%20CI/CD-330F63?style=flat&logo=gitlab&logoColor=white
[#react]: https://img.shields.io/badge/React-20232A?style=flat&logo=react&logoColor=61DAFB
[#docker]: https://img.shields.io/badge/Docker-2CA5E0?style=flat&logo=docker&logoColor=white
[#terraform]: https://img.shields.io/badge/Terraform-7B42BC?style=flat&logo=terraform&logoColor=white
[#aws]: https://img.shields.io/badge/AWS-FF9900?style=flat&logo=amazonaws&logoColor=white
[#kubernetes]: https://img.shields.io/badge/kubernetes-326ce5.svg?&style=flat&logo=kubernetes&logoColor=white


[@react]: https://reactjs.org/
[@docker]: https://www.docker.com/
[@terraform]: https://www.terraform.io/
[@aws]: https://aws.amazon.com/
[@kubernetes]: https://kubernetes.io/

