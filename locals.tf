locals {

  application = "terraform-lab"

  environment = "dev"

  owner = "gokul"

  managed_by = "terraform"

  labels = {
    environment = local.environment
    owner        = local.owner
    managed_by   = local.managed_by
  }

  names = {

    bucket  = "${local.application}-${local.environment}-bucket"

    network = "${local.application}-${local.environment}-vpc"

    subnet  = "${local.application}-${local.environment}-subnet"

    vm      = "${local.application}-${local.environment}-vm"

    firewall = "${local.application}-${local.environment}-fw"

  }

}