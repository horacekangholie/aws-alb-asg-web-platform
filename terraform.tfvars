aws_region                 = "ap-southeast-1"
project_name               = "alb-asg-web-platform"
environment                = "dev"
vpc_cidr                   = "10.20.0.0/16"
public_subnet_cidrs        = ["10.20.1.0/24", "10.20.2.0/24"]
private_app_subnet_cidrs   = ["10.20.11.0/24", "10.20.12.0/24"]
instance_type              = "t3.micro"
root_volume_size_gb        = 8
enable_detailed_monitoring = false
allowed_http_cidrs         = ["0.0.0.0/0"]

asg_min_size         = 2
asg_desired_capacity = 2
asg_max_size         = 4

health_check_path = "/"

common_tags = {
  Owner       = "Horace"
  ManagedBy   = "Terraform"
  Portfolio   = "true"
  ProjectTier = "intermediate"
}