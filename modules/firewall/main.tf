resource "google_compute_firewall" "ssh" {
  name    = "allow-ssh"
  network = var.network_name
  project = var.project_id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = var.source_ranges
  target_tags   = var.target_tags
}

resource "google_compute_firewall" "http" {
  name    = "allow-http"
  network = var.network_name
  project = var.project_id

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = var.source_ranges
  target_tags   = var.target_tags
}

resource "google_compute_firewall" "https" {
  name    = "allow-https"
  network = var.network_name
  project = var.project_id

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_ranges = var.source_ranges
  target_tags   = var.target_tags
}

resource "google_compute_firewall" "internal" {
  name    = "allow-internal"
  network = var.network_name
  project = var.project_id

  allow {
    protocol = "all"
  }

  source_ranges = ["10.10.0.0/24"]
}