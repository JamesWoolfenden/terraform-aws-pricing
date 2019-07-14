variable "filters" {
  description = ""
  type        = list
}

variable "service_code" {
  description = ""
  type        = string
}

variable "region" {
  description = "aws region"
  default     = "eu-west-1"
  type        = string
}