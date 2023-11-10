# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association.html


resource "aws_eip" "nat" {
	#vpc = true
	tags = var.tags
}

resource "aws_eip" "nat1" {
	#vpc = true
	tags = var.tags
}
resource "aws_nat_gateway" "gw" {
	depends_on = [ aws_internet_gateway.gw ]
	allocation_id = aws_eip.nat.id
	subnet_id = aws_subnet.public.id
	tags = var.tags
}

resource "aws_nat_gateway" "gw2" {
	depends_on = [ aws_internet_gateway.gw ]
	allocation_id = aws_eip.nat1.id
	subnet_id = aws_subnet.public2.id
	tags = var.tags
}

resource "aws_subnet" "private" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.private_subnets
	availability_zone = data.aws_availability_zones.available.names[0]
	tags = var.tags
}

resource "aws_subnet" "private2" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.private_subnets2
	availability_zone = data.aws_availability_zones.available.names[1]
	tags = var.tags
}



resource "aws_route_table" "private" {
	vpc_id = aws_vpc.main.id
	route {
		cidr_block = "0.0.0.0/0"
		nat_gateway_id = aws_nat_gateway.gw.id
	}
	tags = var.tags
}

resource "aws_route_table" "private2" {
	vpc_id = aws_vpc.main.id
	route {
		cidr_block = "0.0.0.0/0"
		nat_gateway_id = aws_nat_gateway.gw2.id
	}
	tags = var.tags
}

resource "aws_route_table_association" "private" {
	subnet_id = aws_subnet.private.id
	route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private2" {
	subnet_id = aws_subnet.private2.id
	route_table_id = aws_route_table.private.id
}
