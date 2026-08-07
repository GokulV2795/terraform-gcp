output "reserved_range" {
  description = "Reserved Private Service Access Range"
  value       = google_compute_global_address.private_ip_alloc.name
}

output "service_networking_connection" {
  description = "Private Service Networking Connection"
  value       = google_service_networking_connection.private_vpc_connection.peering
}