# dev environment root module
module "storage" {

  source = "../../modules/storage"

  project_id  = var.project_id
  bucket_name = var.bucket_name
  location    = var.location
  labels      = var.labels

}
module "network" {

  source = "../../modules/network"

  project_id = var.project_id

  network_name = var.network_name

  subnet_name = var.subnet_name

  region = var.region

  subnet_cidr = var.subnet_cidr
}
module "private_service_access" {

  source = "../../modules/private-service-access"

  project_id = var.project_id

  network_self_link = module.network.network_self_link

  address_name = "terraform-dev-private-range"
}
module "sql" {

  source = "../../modules/sql"

  project_id = var.project_id

  region = var.region

  instance_name = "terraform-dev-postgres"

  database_version = "POSTGRES_16"

  tier = "db-f1-micro"

  disk_size = 10

  network_self_link = module.network.network_self_link

  database_name = "appdb"

  database_user = "appuser"

  depends_on = [
    module.private_service_access
  ]

}
module "firewall" {

  source = "../../modules/firewall"

  project_id = var.project_id

  network_name = module.network.network_name

  source_ranges = var.source_ranges

  target_tags = var.target_tags
}
module "compute" {

  source = "../../modules/compute"

  project_id = var.project_id

  region = var.region

  zone = var.zone

  instance_name = var.instance_name

  machine_type = var.machine_type

  network = module.network.network_name

  subnetwork = module.network.subnet_name

  service_account_email = module.iam.service_account_email

  tags = [
    "terraform-vm"
  ]
}
module "iam" {

  source = "../../modules/iam"

  project_id = var.project_id

  service_account_name = "terraform-dev-sa"


  display_name = "Terraform Dev Service Account"

  roles = [
    "roles/storage.admin",
    "roles/logging.logWriter",
    "roles/monitoring.metricWriter"
  ]
}
module "project_services" {

  source = "../../modules/project-services"

  project_id = var.project_id

  services = [

    "compute.googleapis.com",

    "iam.googleapis.com",

    "storage.googleapis.com",

    "cloudbuild.googleapis.com",

    "artifactregistry.googleapis.com",

    "run.googleapis.com",

    "sqladmin.googleapis.com",

    "secretmanager.googleapis.com",

    "logging.googleapis.com",

    "monitoring.googleapis.com",

    "servicenetworking.googleapis.com"

  ]

}
