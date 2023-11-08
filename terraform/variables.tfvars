aws_access_key = "AKIARJHXNHHPVCD7Y5G7"
aws_secret_key = "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"
aws_region =  "eu-central-1"
tag_name = "MyReactApp"
external_port = "80"
cidr_block = "10.0.0.0/16"
private_subnets = "10.0.1.0/24"
public_subnets = "10.0.101.0/24"
private_subnets2 = "10.0.2.0/24"
public_subnets2 = "10.0.102.0/24"
cluster_name = "Cluster-MyReactApp"
cluster_cpu = 256
cluster_memory = 512
desired_count = 1
minimum_healthy = 50
maximum_percent = 100
service_name = "service-MyReactApp"
docker_image = "docker.io/regaipaydogdu/my-react-app"
container_name = "Container-MyReactApp"
alb_security_group_name = "Alb-SecurityGroup"
loadbalancer_name = "LoadBalancer-MyReactApp"
lb_targetgroup_name = "TargetGroup-MyReactApp"

tags = {
  Name    = "ReactApp"
}

