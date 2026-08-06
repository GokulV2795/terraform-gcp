resource "google_compute_firewall" "internal" {

  name    = "allow-internal"

  network = var.network_name

  project = var.project_id

  allow {
    protocol = "all"
  }

  source_ranges = ["10.10.0.0/24"]
}