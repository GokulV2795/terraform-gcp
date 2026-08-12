terraform {
  backend "gcs" {
    bucket  = "terraform-lab-504603-demo-bucket-v2"
    prefix  = "terraform/state/dev"
  }
}