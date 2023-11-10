# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

resource "aws_vpc" "main" {
	cidr_block = var.cidr_block
	tags = var.tags
}