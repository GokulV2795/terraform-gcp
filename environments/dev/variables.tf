variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

variable "bucket_name" {
  description = "Storage bucket name"
  type        = string
}

variable "location" {
  description = "Bucket location"
  type        = string
}

variable "labels" {
  description = "Common labels"
  type        = map(string)
}
variable "network_name" {
  description = "Development VPC Name"
  type        = string
}

variable "subnet_name" {
  description = "Development Subnet Name"
  type        = string
}

variable "subnet_cidr" {
  description = "Development Subnet CIDR"
  type        = string
}