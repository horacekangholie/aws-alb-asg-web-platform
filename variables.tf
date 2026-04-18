variable "aws_region" {
  description = "AWS region for deployment."
  type        = string
  default     = "ap-southeast-1"
}

variable "project_name" {
  description = "Project name used in resource naming and tags."
  type        = string
  default     = "alb-asg-web-platform"
}

variable "environment" {
  description = "Environment name."
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.20.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets across two AZs."
  type        = list(string)
  default     = ["10.20.1.0/24", "10.20.2.0/24"]
}

variable "private_app_subnet_cidrs" {
  description = "CIDR blocks for the private application subnets across two AZs."
  type        = list(string)
  default     = ["10.20.11.0/24", "10.20.12.0/24"]
}

variable "instance_type" {
  description = "EC2 instance type for the Auto Scaling Group."
  type        = string
  default     = "t3.micro"
}

variable "root_volume_size_gb" {
  description = "Root EBS volume size in GiB."
  type        = number
  default     = 8
}

variable "enable_detailed_monitoring" {
  description = "Enable 1-minute detailed monitoring for EC2. This can incur CloudWatch charges."
  type        = bool
  default     = false
}

variable "allowed_http_cidrs" {
  description = "CIDR ranges allowed to access the ALB on port 80."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "ec2_ami_ssm_parameter" {
  description = "SSM public parameter path for the AMI."
  type        = string
  default     = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

variable "asg_min_size" {
  description = "Minimum number of instances in the Auto Scaling Group."
  type        = number
  default     = 2
}

variable "asg_desired_capacity" {
  description = "Desired number of instances in the Auto Scaling Group."
  type        = number
  default     = 2
}

variable "asg_max_size" {
  description = "Maximum number of instances in the Auto Scaling Group."
  type        = number
  default     = 4
}

variable "health_check_path" {
  description = "HTTP path used by the ALB target group health check."
  type        = string
  default     = "/"
}

variable "common_tags" {
  description = "Additional tags applied to all resources."
  type        = map(string)
  default = {
    Owner       = "Horace"
    ManagedBy   = "Terraform"
    Portfolio   = "true"
    ProjectTier = "intermediate"
  }
}