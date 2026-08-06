# network module variables
variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "network_name" {
  description = "VPC Network Name"
  type        = string
}

variable "subnet_name" {
  description = "Subnet Name"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

variable "subnet_cidr" {
  description = "Subnet CIDR Range"
  type        = string
}