resource "aws_eip" "nat" {
	#vpc = true
	tags = var.tags
}
resource "aws_nat_gateway" "gw" {
	depends_on = [ aws_internet_gateway.gw ]
	allocation_id = aws_eip.nat.id
	subnet_id = aws_subnet.public.id
	tags = var.tags
}

resource "aws_subnet" "private" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.private_subnets
	availability_zone = data.aws_availability_zones.available.names[0]
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

resource "aws_route_table_association" "private" {
	subnet_id = aws_subnet.private.id
	route_table_id = aws_route_table.private.id
}
