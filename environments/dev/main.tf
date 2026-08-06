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
module "firewall" {

  source = "../../modules/firewall"

  project_id = var.project_id

  network_name = module.network.network_name

  source_ranges = var.source_ranges

  target_tags = var.target_tags
}