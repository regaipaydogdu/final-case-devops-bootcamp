# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition

resource "aws_ecs_cluster" "main" {
  name = var.cluster_name
  tags = var.tags
}

resource "aws_ecs_service" "main" {
  name                               = var.service_name
  cluster                            = aws_ecs_cluster.main.id
  task_definition                    = aws_ecs_task_definition.main.arn
  desired_count                      = var.desired_count
  deployment_minimum_healthy_percent = var.minimum_healthy
  deployment_maximum_percent         = var.maximum_percent
  launch_type                        = "FARGATE"
  scheduling_strategy                = "REPLICA"

  network_configuration {
    security_groups  = [aws_security_group.ecs_security_group.id]
    subnets          = [aws_subnet.private.id, aws_subnet.private2.id]
    assign_public_ip = false
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.main.arn
    container_name   = var.container_name
    container_port   = 80
  }

  lifecycle {
    ignore_changes = [task_definition, desired_count]
  }
  tags = var.tags
}

resource "aws_ecs_task_definition" "main" {
  family                   = "myreactapp-task"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.cluster_cpu
  memory                   = var.cluster_memory
  execution_role_arn       = aws_iam_role.ecs_role.arn
  task_role_arn            = aws_iam_role.ecs_role.arn
  container_definitions = jsonencode([
    {
      name  = var.container_name
      image = var.docker_image
      app_port       = 80
      portMappings= [
          {
             protocol: "tcp",
             containerPort: 80
             hostPort: 80
          }
       ]
    },
  ])
  tags = var.tags
}