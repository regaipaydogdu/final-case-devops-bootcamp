## Deploy Application to AWS with Terraform

**_Built with;_**

[![aws][#aws]][@aws] [![docker][#docker]][@docker][![react][#react]][@react] [![terraform][#terraform]][@terraform] 

### :file_folder: AWS Architecture

<br>

![AWS Diagram/][#aws-diagram]

#### Provider

In the project, involves the utilization of the Terraform AWS provider.For seamless integration, we must furnish the access key, secret key, and region information. This ensures that Terraform can interact with AWS services efficiently, orchestrating the deployment and configuration of our infrastructure.

#### VPC and Subnets

In the project, involves creating a Virtual Private Cloud (VPC) with two availability zones. We'll establish one public and one private subnet in each zone, resulting in two of each. The routing table for public subnets will direct traffic through the internet gateway. To enable external communication for private subnets, we'll attach NAT gateways with associated Elastic IPs.

#### IAM (AWS Identity and Access Management)

In the project, there is an IAM role named "ecs_role." The role is defined with a policy specified for use by Amazon ECS tasks. The service "ecs-tasks.amazonaws.com" has permission to assume this IAM role.

#### Security Groups

In the project, two security groups are created for the project. One is specifically designed for the load balancer, allowing access exclusively through TCP port 80. The second security group is dedicated to ECS tasks, permitting ingress access only to the port exposed by the task.

#### ECS Cluster

It allows for the simultaneous execution and maintenance of a specified number of task definition instances in an Amazon ECS cluster. If any task fails or stops, the ECS service scheduler launches a replacement instance to uphold the desired task count in the service.

#### Application Load Balancer

In the proj ect involves application load balancer which is placed in front of the services.This service, specifyto which subnets to direct the traffic.

#### Autoscaling and CloudWatch

There is an autoscaling target and two policies to increase the resilience of our system. The autoscaling parameters determine to increase scaling when CPU utilization exceeds 50% and decrease scaling when it drops below 20%. 


### :wrench: Installation

To deploy our AWS ECS Fargate application prepared with Terraform, we need to execute the following commands in order.

* This command downloads the providers and modules that Terraform will use and prepares other essential resources needed for the project to run

```bash
  terraform init
```

* It is used to preview infrastructure changes in the Terraform project. The -var-file=variables.tfvars option provides variable values to Terraform using values from the variables.tfvars file.

```bash
  terraform plan -var-file=variables.tfvars
```
* Used to apply changes made in a Terraform project, the -auto-approve option allows Terraform to apply changes directly without asking the user for approval. This automates the process and does not prompt the user for approval at each step.

```bash
  terraform apply -auto-approve -var-file=variables.tfvars
```

After these steps, we will have configured the application on AWS.

### :open_file_folder: **Files**

```
auto_scale.tf         : Configures auto-scaling for dynamic resource scaling.
cloudwatch.tf         : Sets up CloudWatch for monitoring application performance.
ecs.tf                : Defines ECS configurations for containerized applications.
iam_roles.tf          : Specifies IAM roles for AWS service access.
internet_gateway.tf   : Establishes an internet gateway for VPC communication.
loadbalancer.tf       : Configures a load balancer for traffic distribution.
main.tf               : Main Terraform config file for module and resource utilization.
private_subnet.tf     : Defines private subnets for internal resources.
provider.tf           : Terraform provider configuration.
public_subnet.tf      : Defines public subnets for external resources.
security_groups.tf    : Specifies security groups for traffic control.
variables.tf          : Terraform variable definitions for flexibility. 
variables.tfvars      : File with variable values, often for sensitive information.
vpc.tf                : Configures AWS VPC for network architecture.
```


[#aws-diagram]: https://github.com/regaipaydogdu/final-case-devops-bootcamp/blob/main/assets/aws_architecture_diagram_dark.svg
[#react]: https://img.shields.io/badge/React-20232A?style=flat&logo=react&logoColor=61DAFB
[#docker]: https://img.shields.io/badge/Docker-2CA5E0?style=flat&logo=docker&logoColor=white
[#terraform]: https://img.shields.io/badge/Terraform-7B42BC?style=flat&logo=terraform&logoColor=white
[#aws]: https://img.shields.io/badge/AWS-FF9900?style=flat&logo=amazonaws&logoColor=white

[@react]: https://reactjs.org/
[@docker]: https://www.docker.com/
[@terraform]: https://www.terraform.io/
[@aws]: https://aws.amazon.com/
