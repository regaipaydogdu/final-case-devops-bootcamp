# Logo Yazılım & Fırat Üniversitesi LOG-in DevOps Bootcamp

## Final Project

### :notebook: Notes

This README file provides general information. Each project directory has its individual README file.

**_Built with;_**

[![aws][#aws]][@aws] [![docker][#docker]][@docker] [![gitlab][#gitlab]][@gitlab] [![kubernetes][#kubernetes]][@kubernetes] [![react][#react]][@react]  [![terraform][#terraform]][@terraform] 

### :open_book: **Table of Contents**

1. [Tasks](#tasks)
   - [Assignment](#assignment)
   - [Deploy Application to AWS](#deploy-application-to-aws)
   - [Deploy Application to Kubernates](#deploy-application-to-kubernates)
   - [Bonus](#bonus)
2. [GitLab CI CD Configuration](#wrench-gitlab-ci-cd-configuration)
3. [GitLab Pipeline](#loop-gitlab-pipeline)
4. [AWS Architecture Diagram](#black_nib-aws-architecture-diagram)
5. [Videos (Run Project with Gitlab)](#movie_camera-videos)
6. [Contents of the Directory](#open_file_folder-contents-of-the-directory)

###  **Tasks**

> Fully cover the DevOps cycle and create a full-on CI/CD and cloud infrastructure.

####  **Assignment**

> 1. Create a basic React.js application
> 2. Create a Dockerfile for application.Try to form an image with the smallest possible size.
> 3. Design and write a GitLab CI/CD pipeline featuring Dockerfile for application.

#### **Deploy Application to AWS**

> 1. Use Terraform to provision the infrastructure.
> 2. Application should be running on ECS Fargate.
> 3. Make sure to use the ideal VPC and security group settings.
> 4. Application load balancer must be configured in front of the service.

#### **Deploy Application to Kubernates**

> 1. Write the required core manifest files

#### **Bonus**

> 1. Configure auto-scaling onto your Fargate instance. Scale-up when CPU is above %50 and scale-down when CPU is below %20.
> 2. Create the proper Cloudwatch dashboards and metrics for monitoring the performance of the application.
> 3. Draw your AWS architecture, explain the connections and relations between your configured services.
> 4. Instead of using GitLab's shared runners, you can configure your own runner.


### :wrench: GitLab CI CD Configuration

To run the projects correctly, we need to add variables to GitLab. Each project has its own set of variables.

> 1. Go to "Settings > CI/CD > Variables."
> 2. Click "Add variable."


![Gitlab CI/CD Variables][#gitlabci-variables]

| Key | Value     | Description                |
| :-------- | :------- | :------------------------- |
| `AWS_ACCESS_KEY_ID` | `AWS Access Key` | ******************** |
| `AWS_SECRET_ACCESS_KEY` | `AWS Secret Key` | ******************** |
| `DOCKER_IMAGE` | `Docker Image Name` | **e.g.** my-react-app |
| `DOCKER_PASSWORD` | `Docker Hub Password` | ******************** |
| `DOCKER_USERNAME` | `Docker Hub Username` | **e.g.** regaipaydogdu |



### :loop: GitLab Pipeline

The pipeline has 3 stages:

> 1. "build" stage  : In this stage, the application is built, and relevant artifacts are generated as part of the build process.
> 2. "package" stage   : First, it runs the "docker login" command. Then, it builds the image and pushes it to Docker Hub.
> 3. "deploy" stage : The project is deployed on AWS using Terraform, creating the infrastructure and deploying the application to the target environment.

![Gitlab CI/CD Pıpeline Status][#gitlabci-pipeline-status]
![Gitlab CI/CD Pıpeline][#gitlabci-pipeline]



### :black_nib: AWS Architecture Diagram

This AWS architectural design represents a VPC with two Availability Zones. There is one public and one private subnet for each Availability Zone. Public subnets have direct internet access and can exit to the internet through an Internet Gateway. On the other hand, private subnets cannot access the internet directly but can securely access it through NAT Gateways. This structure is designed to adhere to high-security standards and provide a scalable infrastructure.


![AWS Diagram/][#aws-diagram]

### :movie_camera: Videos

> Watch the project video;

[![youtube][#youtube]][@youtube] 




### :open_file_folder: **Contents of the Directory**

```
/                 : This is the GitLab CI/CD parent pipeline manifest.
ansible-shell/    : Shell script for monitoring disk usage and sending email alerts.
assets/           : The directory where the visual content is stored.
docker/           : React.js application and Dockerfile are stored.
gitlab-runner/    : The folder that hosts own GitLab runner's config.toml file.
kubernates/       : Inside this directory, you can find Kubernetes deployment manifests.
terraform/        : Terraform stack that features integration with AWS services.
```





[#gitlabci-pipeline]: ./assets/images/gitlabci-pipeline.PNG
[#gitlabci-pipeline-status]: ./assets/images/gitlabci-pipeline-status.PNG
[#gitlabci-variables]: ./assets/images/gitlabci-variables.png
[#aws-diagram]: ./assets/aws_architecture_diagram_dark.svg

[#gitlab]: https://img.shields.io/badge/GitLab%20CI/CD-330F63?style=flat&logo=gitlab&logoColor=white
[#react]: https://img.shields.io/badge/React-20232A?style=flat&logo=react&logoColor=61DAFB
[#docker]: https://img.shields.io/badge/Docker-2CA5E0?style=flat&logo=docker&logoColor=white
[#terraform]: https://img.shields.io/badge/Terraform-7B42BC?style=flat&logo=terraform&logoColor=white
[#aws]: https://img.shields.io/badge/AWS-FF9900?style=flat&logo=amazonaws&logoColor=white
[#kubernetes]: https://img.shields.io/badge/Kubernetes-326ce5.svg?&style=flat&logo=kubernetes&logoColor=white
[#youtube]: https://img.shields.io/badge/Youtube-red?&style=flat&logo=youtube&logoColor=white


[@gitlab]: https://gitlab.com/regaipaydogdu/final-case-devops-bootcamp
[@youtube]: https://youtu.be/MrfZi04hrGI
[@react]: https://reactjs.org/
[@docker]: https://www.docker.com/
[@terraform]: https://www.terraform.io/
[@aws]: https://aws.amazon.com/
[@kubernetes]: https://kubernetes.io/

