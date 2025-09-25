# Use UUID resource to generate unique subdomain suffixes
resource "random_uuid" "self" {
}

locals {
  # Define a mapping of regions to their respective geo regions
  region_mapping = {
    "br10" = "LATAM"
    "jp10" = "APAC"
    "ap10" = "APAC"
    "ap11" = "APAC"
    "ap12" = "APAC"
    "ca10" = "AMER"
    "eu10" = "EMEA"
    "eu11" = "EMEA"
    "us10" = "AMER"
    "us11" = "AMER"
    "us30" = "AMER"
    "eu30" = "EMEA"
    "in30" = "APAC"
    "il30" = "EMEA"
    "jp30" = "APAC"
    "jp31" = "APAC"
    "ap30" = "APAC"
    "br30" = "APAC"
    "eu20" = "EMEA"
    "ap20" = "APAC"
    "ap21" = "APAC"
    "br20" = "APAC"
    "ca20" = "AMER"
    "cn20" = "APAC"
    "us20" = "AMER"
    "jp20" = "APAC"
    "us21" = "AMER"
    "ch20" = "EMEA"
  }

  # Needed to find the right landscape label for the Cloud Foundry environment
  extension_landscape_mapping = {
    "br10" = "cf-br10"
    "jp10" = "cf-jp10"
    "ap10" = "cf-ap10"
    "ap11" = "cf-ap11"
    "ap12" = "cf-ap12"
    "ca10" = "cf-ca10"
    "eu10" = "cf-eu10-004"
    "eu11" = "cf-eu11"
    "us10" = "cf-us10-002"
    "us11" = "cf-us10"
    "us30" = "cf-us30"
    "eu30" = "cf-eu30"
    "in30" = "cf-in30"
    "il30" = "cf-il30"
    "jp30" = "cf-jp30"
    "jp31" = "cf-jp31"
    "ap30" = "cf-ap30"
    "br30" = "cf-br30"
    "eu20" = "cf-eu20-001"
    "ap20" = "cf-ap20"
    "ap21" = "cf-ap21"
    "br20" = "cf-br20"
    "ca20" = "cf-ca20"
    "cn20" = "cf-cn20"
    "us20" = "cf-us20"
    "jp20" = "cf-jp20"
    "us21" = "cf-us21"
    "ch20" = "cf-ch20"
  }

}

# Create subaccounts based on the provided information
resource "btp_subaccount" "self" {
  for_each = var.subaccounts

  parent_id             = var.parent_id
  name                  = "${each.key} - ${var.stage}"
  subdomain             = "${replace(lower(each.key), " ", "-")}-${lower(var.stage)}-${random_uuid.self.result}"
  region                = each.value.region
  description           = "Subaccount for ${each.key} in the ${var.stage} stage of the subsidiary ${var.subsidiary_name}."
  skip_auto_entitlement = true
  usage                 = var.stage == "Prod" ? "USED_FOR_PRODUCTION" : "NOT_USED_FOR_PRODUCTION"
  labels = {
    "CostCenter"    = ["${each.value.cost_center}"]
    "ContactPerson" = ["${each.value.contact_person}"]
    "Department"    = ["${each.value.department}"]
    "Environment"   = ["${var.stage}"]
    "Region"        = ["${lookup(local.region_mapping, each.value.region, "UNKNOWN")}"]
  }
}

# Create the subaccount entitlements based on the stage
module "subaccount_default_entitlements" {
  source = "../../modules/sap-btp-subaccount-default-entitlements"

  stage = var.stage
}

module "sap_btp_entitlements" {
  for_each = var.subaccounts
  source   = "aydin-ozcan/sap-btp-entitlements/btp"
  version  = "~> 1.0.1"

  subaccount   = btp_subaccount.self[each.key].id
  entitlements = module.subaccount_default_entitlements.default_entitlements_for_stage
}


# Create the Cloud Foundry Environment for the subaccounts
resource "btp_subaccount_environment_instance" "cloudfoundry" {
  depends_on = [module.sap_btp_entitlements]
  for_each   = var.subaccounts

  subaccount_id    = btp_subaccount.self[each.key].id
  name             = "${replace(lower(each.key), " ", "-")}-${lower(var.stage)}-${random_uuid.self.result}"
  environment_type = "cloudfoundry"
  service_name     = "cloudfoundry"
  plan_name        = "standard"
  landscape_label  = lookup(local.extension_landscape_mapping, each.value.region, null)
  parameters = jsonencode({
    instance_name = "${replace(lower(each.key), " ", "-")}-${lower(var.stage)}-${random_uuid.self.result}"
  })
}


# Add default service instances and app subscriptions to each subaccount
module "sap_btp_subaccount_default_app_service_instances" {
  depends_on = [module.sap_btp_entitlements]
  for_each   = var.subaccounts
  source     = "../../modules/sap-btp-default-apps-and-services"

  subaccount_id = btp_subaccount.self[each.key].id
  stage         = var.stage
  department    = each.value.department
}
