terraform {
  backend "gcs" {
    bucket = "terraform-lab-504603-tfstate"
    prefix = "dev"
  }
}