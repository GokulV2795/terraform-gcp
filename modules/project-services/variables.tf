variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "services" {
  description = "List of Google APIs to enable"
  type        = list(string)
}