locals {
  vars_hash = md5(jsonencode([
    var.expression,
    var.label,
    var.color,
  ]))

  id = "e_${local.vars_hash}"

  # TODO: move to cloudwatch/alarm
  # https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html
  # alarm_metric_query = { expression = var.expression }
  # alarm_metric = merge(
  #   { metric_query = local.alarm_metric_query },
  #   var.id != null ? { id = var.id } : {},
  #   var.label != null ? { label = var.label } : {}
  # )
}
