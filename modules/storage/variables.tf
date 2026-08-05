variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "bucket_name" {
  description = "Cloud Storage bucket name"
  type        = string
}

variable "location" {
  description = "Bucket location"
  type        = string
}

variable "labels" {
  description = "Labels to apply to the bucket"
  type        = map(string)
  default     = {}
}
