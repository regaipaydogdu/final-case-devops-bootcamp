resource "aws_security_group" "ecs_security_group" {
  name   = "ECS-SecurityGroup"
  vpc_id = aws_vpc.main.id

  ingress {
    protocol    = "tcp"
    from_port   = var.external_port
    to_port     = var.external_port
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = var.tags
}
