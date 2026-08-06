variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "network_name" {
  description = "VPC Network Name"
  type        = string
}

variable "source_ranges" {
  description = "Allowed source IP ranges"
  type        = list(string)
}

variable "target_tags" {
  description = "Network tags applied to VMs"
  type        = list(string)
}