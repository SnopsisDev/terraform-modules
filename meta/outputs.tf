output "ci_user_name" {
  description = "Infrastructure CI AWS user"
  value       = "${aws_iam_user.ci.name}"
}

output "ci_user_arn" {
  description = "Infrastructure CI AWS user ARN"
  value       = "${aws_iam_user.ci.arn}"
}

output "ci_access_key_id" {
  description = "AWS access key for infrastructure CI user"
  value       = "${aws_iam_access_key.ci.id}"
}

output "ci_secret_access_key" {
  description = "AWS secret key for infrastructure CI user"
  value       = "${aws_iam_access_key.ci.secret}"
  sensitive   = true
}

output "provider_aws_config" {
  description = "Terraform AWS provider block"
  value       = "${data.template_file.provider_aws_config.rendered}"
}

output "backend_config" {
  description = "Terraform backend config"
  value       = "${data.template_file.backend_config.rendered}"
}

output "meta_backend_config" {
  description = "Terraform meta backend config"
  value       = "${data.template_file.meta_backend_config.rendered}"
}