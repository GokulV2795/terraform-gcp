# compute module variables
variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "network" {
  type = string
}

variable "subnetwork" {
  type = string
}

variable "tags" {
  type = list(string)
}
variable "service_account_email" {
  description = "Service Account Email"
  type        = string
}

variable "service_account_scopes" {
  description = "OAuth scopes for the VM"
  type        = list(string)

  default = [
    "https://www.googleapis.com/auth/cloud-platform"
  ]
}