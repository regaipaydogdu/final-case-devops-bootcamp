# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association.html

resource "aws_subnet" "public" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.public_subnets
	availability_zone = data.aws_availability_zones.available.names[0]
	map_public_ip_on_launch = true
	tags = var.tags
}

resource "aws_subnet" "public2" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.public_subnets2
	availability_zone = data.aws_availability_zones.available.names[1]
	map_public_ip_on_launch = true
	tags = var.tags
}


resource "aws_route_table" "r" {
	vpc_id = aws_vpc.main.id
	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.gw.id
	}
	tags = var.tags
}


resource "aws_route_table_association" "public" {
	subnet_id = aws_subnet.public.id
	route_table_id = aws_route_table.r.id
}

resource "aws_route_table_association" "public2" {
	subnet_id = aws_subnet.public2.id
	route_table_id = aws_route_table.r.id
}
