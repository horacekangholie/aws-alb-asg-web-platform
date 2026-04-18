output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.this.id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = [for s in aws_subnet.public : s.id]
}

output "private_app_subnet_ids" {
  description = "Private application subnet IDs"
  value       = [for s in aws_subnet.private_app : s.id]
}

output "alb_arn" {
  description = "Application Load Balancer ARN"
  value       = aws_lb.this.arn
}

output "alb_dns_name" {
  description = "Application Load Balancer DNS name"
  value       = aws_lb.this.dns_name
}

output "website_url" {
  description = "Public URL of the application"
  value       = "http://${aws_lb.this.dns_name}"
}

output "target_group_arn" {
  description = "Target group ARN"
  value       = aws_lb_target_group.web.arn
}

output "autoscaling_group_name" {
  description = "Auto Scaling Group name"
  value       = aws_autoscaling_group.web.name
}

output "launch_template_id" {
  description = "Launch template ID"
  value       = aws_launch_template.web.id
}

output "nat_gateway_id" {
  description = "NAT Gateway ID"
  value       = aws_nat_gateway.this.id
}

output "describe_asg_instances_command" {
  description = "AWS CLI command to discover instance IDs currently running in the ASG"
  value       = "aws autoscaling describe-auto-scaling-groups --auto-scaling-group-names ${aws_autoscaling_group.web.name} --region ${var.aws_region}"
}