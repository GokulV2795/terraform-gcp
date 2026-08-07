# sql module variables
variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "database_version" {
  type = string
}

variable "tier" {
  type = string
}

variable "disk_size" {
  type = number
}

variable "network_self_link" {
  type = string
}

variable "database_name" {
  type = string
}

variable "database_user" {
  type = string
}