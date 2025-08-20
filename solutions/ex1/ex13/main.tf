locals {
  stages = ["Dev", "Test"]
}

# Main Directory per subsidiary
resource "btp_directory" "main" {
  name        = "SUB: ${var.subsidiary_name} - ${var.username}"
  description = "The parent directory for the subsidiary ${var.subsidiary_name}."
}

# Subdirectories per stage
resource "btp_directory" "stage" {
  for_each = toset(local.stages)

  name        = upper(each.value)
  description = "The directory for the ${each.value} stage of the subsidiary ${var.subsidiary_name}."
  parent_id   = btp_directory.main.id
}

# Subaccount setup
module "sap-btp-subaccount-setup" {
  source   = "../../../modules/sap-btp-subaccount-setup"
  for_each = toset(local.stages)

  parent_id       = btp_directory.stage[each.key].id
  stage           = each.key
  subsidiary_name = var.subsidiary_name
  subaccounts     = var.subaccounts
}
