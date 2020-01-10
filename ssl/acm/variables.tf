variable "create" {
  description = "Should resources be created"
  default     = true
  type        = bool
}

variable "domains" {
  description = "Certificate domains, have to be in one Route53 hosted zone."
  type        = list(string)
}

variable "hosted_zone_id" {
  description = "Route53 hosted zone id for ACM domain ownership validation"
  type        = string
}

variable "tags" {
  description = "Tags to set on resources that support them"
  type        = map(string)
  default     = {}
}

variable "validation_record_count" {
  description = "Override the number of validation records to work around aws_acm_certificate domain_validation_options non-deterministic behavior, eg. https://github.com/terraform-providers/terraform-provider-aws/issues/9840"
  type        = number
  default     = null
}
