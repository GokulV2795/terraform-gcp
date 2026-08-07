# dev environment outputs
output "bucket_name" {
  value = module.storage.bucket_name
}

output "bucket_url" {
  value = module.storage.bucket_url
}

output "bucket_self_link" {
  value = module.storage.bucket_self_link
}
output "network_name" {
  description = "VPC Network Name"
  value       = module.network.network_name
}

output "network_self_link" {
  description = "VPC Self Link"
  value       = module.network.network_self_link
}

output "subnet_name" {
  value = module.network.subnet_name
}

output "subnet_self_link" {
  value = module.network.subnet_self_link
}
output "vm_external_ip" {
  value = module.compute.external_ip
}

output "vm_internal_ip" {
  value = module.compute.internal_ip
}
output "service_account_email" {

  description = "Service Account Email"

  value = module.iam.service_account_email
}
output "enabled_services" {

  description = "Enabled Google APIs"

  value = module.project_services.enabled_services

}