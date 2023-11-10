# https://registry.terraform.io/providers/hashicorp/aws/latest/docs
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones

provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

data "aws_availability_zones" "available" {
	state = "available"
}


