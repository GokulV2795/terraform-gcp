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
  value = module.network.network_name
}

output "network_self_link" {
  value = module.network.network_self_link
}

output "subnet_name" {
  value = module.network.subnet_name
}

output "subnet_self_link" {
  value = module.network.subnet_self_link
}