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
}

# Create subaccounts based on the provided information
resource "btp_subaccount" "self" {
  for_each = var.subaccounts

  parent_id   = var.parent_id
  name        = "${each.key} - ${var.stage}"
  subdomain   = "${replace(lower(each.key), " ", "-")}-${lower(var.stage)}-${random_uuid.self.result}"
  region      = each.value.region
  description = "Subaccount for ${each.key} in the ${var.stage} stage of the subsidiary ${var.subsidiary_name}."
  usage       = var.stage == "Prod" ? "USED_FOR_PRODUCTION" : "NOT_USED_FOR_PRODUCTION"
  labels = {
    "cost_center"    = ["${each.value.cost_center}"]
    "contact_person" = ["${each.value.contact_person}"]
    "geo_region"     = ["${lookup(local.region_mapping, each.value.region, "UNKNOWN")}"]
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

data "btp_subaccount_environments" "all" {
  for_each = var.subaccounts

  subaccount_id = btp_subaccount.self[each.key].id
}

resource "terraform_data" "cf_landscape_label" {
  for_each = var.subaccounts

  input = [for env in data.btp_subaccount_environments.all[each.key].values : env if env.service_name == "cloudfoundry" && env.environment_type == "cloudfoundry"][0].landscape_label
}

# Create the Cloud Foundry Environment for the subaccounts
resource "btp_subaccount_environment_instance" "cloudfoundry" {
  for_each = var.subaccounts

  subaccount_id    = btp_subaccount.self[each.key].id
  name             = "${replace(lower(each.key), " ", "-")}-${lower(var.stage)}-${random_uuid.self.result}"
  environment_type = "cloudfoundry"
  service_name     = "cloudfoundry"
  plan_name        = "standard"
  landscape_label  = terraform_data.cf_landscape_label[each.key].output
  parameters = jsonencode({
    instance_name = "${replace(lower(each.key), " ", "-")}-${lower(var.stage)}-${random_uuid.self.result}"
  })
}

# Create the app subscrioptions for the subaccounts

# Create the service instances for the subaccounts
