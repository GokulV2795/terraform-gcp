# sql module
resource "random_password" "db_password" {
  length  = 20
  special = true
}

resource "google_sql_database_instance" "this" {

  name             = var.instance_name
  database_version = var.database_version
  region           = var.region
  project          = var.project_id

  deletion_protection = false

  settings {

    tier = var.tier

    disk_size = var.disk_size

    disk_type = "PD_SSD"

    availability_type = "ZONAL"

    backup_configuration {
      enabled = true
    }

    ip_configuration {

      ipv4_enabled = false

      private_network = var.network_self_link

    }

  }

}

resource "google_sql_database" "this" {

  name     = var.database_name
  instance = google_sql_database_instance.this.name
  project  = var.project_id

}

resource "google_sql_user" "this" {

  name     = var.database_user
  instance = google_sql_database_instance.this.name
  project  = var.project_id

  password = random_password.db_password.result

}