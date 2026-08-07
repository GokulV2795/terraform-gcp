# compute module
resource "google_compute_instance" "vm" {

  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone
  project      = var.project_id

  tags = var.tags

  boot_disk {

    initialize_params {

      image = "ubuntu-os-cloud/ubuntu-2404-lts-amd64"

      size = 20
    }
  }

  network_interface {

    network    = var.network

    subnetwork = var.subnetwork

    access_config {}
  }
service_account {

  email = var.service_account_email

  scopes = var.service_account_scopes

}
  metadata_startup_script = file("${path.module}/startup.sh")
}
