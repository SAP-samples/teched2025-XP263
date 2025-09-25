
terraform {
  required_providers {
    btp = {
      source  = "SAP/btp"
      version = "~> 1.16.1"
    }
  }
}

provider "btp" {
  globalaccount = var.globalaccount
  username      = var.username
  password      = var.password
  idp           = var.idp
}
