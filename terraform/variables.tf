variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "tag_name" {}
variable "external_port" {}
variable "cidr_block" {}
variable "private_subnets" {}
variable "public_subnets" {}
variable "tags" {
	type = map(string)
}

