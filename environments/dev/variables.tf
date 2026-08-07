variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {

  description = "Deployment Region"

  type = string

  validation {

    condition = contains([
      "asia-south1",
      "asia-south2",
      "us-central1"
    ], var.region)

    error_message = "Unsupported region."

  }

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
variable "source_ranges" {
  type = list(string)
}

variable "target_tags" {
  type = list(string)
}
variable "zone" {

  description = "Deployment Zone"

  type = string

  validation {

    condition = contains([
      "asia-south1-a",
      "asia-south1-b",
      "asia-south1-c",
      "asia-south2-a",
      "us-central1-a"
    ], var.zone)

    error_message = "Unsupported zone."

  }

}

variable "instance_name" {
  type = string
}

variable "machine_type" {

  description = "VM Machine Type"

  type = string

  default = "e2-micro"

}