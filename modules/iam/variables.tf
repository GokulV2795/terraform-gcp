# iam module variables
variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "service_account_name" {
  description = "Service Account ID"
  type        = string
}

variable "display_name" {
  description = "Service Account Display Name"
  type        = string
}

variable "roles" {
  description = "IAM Roles"
  type        = list(string)
}