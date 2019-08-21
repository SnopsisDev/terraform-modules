output "id" {
  value       = var.create ? aws_autoscaling_group.hosts[0].id : null
  description = "Autoscaling group id"
}

output "arn" {
  value       = var.create ? aws_autoscaling_group.hosts[0].arn : null
  description = "Autoscaling group ARN"
}

output "instance_ids" {
  value = var.create ? data.aws_instances.hosts[0].ids : null
}

output "instance_private_ips" {
  value = var.create ? data.aws_instances.hosts[0].private_ips : null
}

