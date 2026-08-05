# dev environment root module
module "storage" {

  source = "../../modules/storage"

  project_id  = var.project_id
  bucket_name = var.bucket_name
  location    = var.location
  labels      = var.labels

}
