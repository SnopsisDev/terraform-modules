variable "expression" {
  description = "Metric expression, eg. 'm1 + m2'"
  type        = string
}

variable "period" {
  description = "Metric aggregation period in seconds"
  type        = number
  default     = 60
}

variable "stat" {
  description = "Metric aggregation function"
  type        = string
  default     = "Average"
}

variable "id" {
  description = "Metric id to use in expressions"
  type        = string
  default     = null
}

variable "label" {
  description = "Human-friendly metric description"
  type        = string
  default     = null
}

variable "color" {
  description = "Color to use in graphs"
  type        = string
  default     = null
}