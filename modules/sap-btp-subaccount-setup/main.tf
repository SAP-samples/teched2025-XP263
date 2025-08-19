resource "random_uuid" "self" {
}

locals {
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


resource "btp_subaccount" "self" {
  for_each = var.subaccounts

  parent_id   = var.parent_id
  name        = "${each.key} - ${var.stage}"
  subdomain   = "${replace(lower(each.key), " ", "-")}-${lower(var.stage)}-${random_uuid.self.result}"
  region      = each.value.region
  description = "Subaccount for ${each.key} in the ${var.stage} stage of the subsidiary ${var.subsidiary_name}."
  usage       = var.stage == "Prod" ? "USED_FOR_PRODUCTION" : "NOT_USED_FOR_PRODUCTION"
  labels      = {
    "cost_center"    = ["${each.value.cost_center}"]
    "contact_person" = ["${each.value.contact_person}"]
    "geo_region"     = ["${lookup(local.region_mapping, each.value.region, "UNKNOWN")}"]
  }
}
