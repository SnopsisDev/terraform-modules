output "alarm_metric_query" {
  description = "Object to use for a aws_cloudwatch_alarm metric_query block"
  value       = local.alarm_metric_query
}

output "alarm_metric" {
  description = "Object to use for a aws_cloudwatch_alarm metric block"
  value       = local.alarm_metric
}

output "graph_metric_path" {
  description = "Path to use to add this metric to a cloudwatch graph"
  value       = local.graph_metric_path
}

output "graph_metric_options" {
  description = "Options object to use for this metric in a cloudwatch graph"
  value       = local.graph_metric_options
}

output "graph_metric" {
  description = "Path + options to add this metric to a cloudwatch graph"
  value       = local.graph_metric
}

# Forwarded variables:
output "namespace" {
  description = "Namespace of the metric, eg. `AWS/EC2`"
  value       = var.namespace
}

output "name" {
  description = "Name of the metric, eg. `CPUUtilization`"
  value       = var.name
}

output "dimensions" {
  description = "Additional metric filters, eg. `{ InstanceId = i-abc123 }`"
  value       = var.dimensions
}

output "period" {
  description = "Metric aggregation period in seconds"
  value       = var.period
}

output "stat" {
  description = "Metric aggregation function"
  value       = var.stat
}

output "id" {
  description = "Metric id to use in expressions"
  value       = var.id
}

output "label" {
  description = "Human-friendly metric description"
  value       = var.label
}