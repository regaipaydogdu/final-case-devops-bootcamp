variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "tag_name" {}
variable "external_port" {}
variable "cidr_block" {}
variable "private_subnets" {}
variable "private_subnets2" {}
variable "public_subnets" {}
variable "public_subnets2" {}
variable "cluster_name" {}
variable "cluster_cpu" {}
variable "cluster_memory" {}
variable "desired_count"{}
variable "minimum_healthy"{}
variable "maximum_percent"{}
variable "service_name"{}
variable "container_name"{}
variable "docker_image"{}
variable "alb_security_group_name"{}
variable "loadbalancer_name"{}
variable "lb_targetgroup_name"{}
variable "tags" {
	type = map(string)
}

