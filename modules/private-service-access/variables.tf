variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "network_self_link" {
  description = "Self link of the VPC network"
  type        = string
}

variable "address_name" {
  description = "Reserved IP range name"
  type        = string
}