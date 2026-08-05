variable "project_id" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "location" {
  type = string
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "labels" {
  description = "Labels to apply to resources in the dev environment"
  type        = map(string)
  default     = {}
}
