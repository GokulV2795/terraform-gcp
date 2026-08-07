output "enabled_services" {
  description = "APIs enabled in this project"

  value = [
    for service in google_project_service.services :
    service.service
  ]
}