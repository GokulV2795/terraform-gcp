# network module
resource "google_compute_network" "this" {

  name                    = var.network_name

  auto_create_subnetworks = false

  routing_mode            = "REGIONAL"

  project = var.project_id
}

resource "google_compute_subnetwork" "this" {

  name          = var.subnet_name

  region        = var.region

  network       = google_compute_network.this.id

  ip_cidr_range = var.subnet_cidr

  project = var.project_id

  private_ip_google_access = true
}