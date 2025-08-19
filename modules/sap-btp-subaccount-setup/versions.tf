terraform {
  required_version = ">= 1.12"
  required_providers {
    btp = {
      source  = "SAP/btp"
      version = ">= 1.15.0"
    }
  }
}
