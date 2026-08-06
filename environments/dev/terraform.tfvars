project_id = "terraform-lab-504603"

bucket_name = "terraform-lab-504603-demo-bucket-v3"

location = "ASIA"

region = "asia-south1"

labels = {
  environment = "dev"
  owner       = "gokul"
  managed_by  = "terraform"
}

network_name = "terraform-dev-vpc"

subnet_name = "terraform-dev-subnet"

subnet_cidr = "10.10.0.0/24"

source_ranges = [
  "0.0.0.0/0"
]

target_tags = [
  "terraform-vm"
]