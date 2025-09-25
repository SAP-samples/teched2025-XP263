locals {
  service_name_prefix = "${var.stage}-${var.department}"
}

# Create the app subscrioptions for the subaccounts
resource "btp_subaccount_subscription" "auditlog_viewer__free" {
  subaccount_id = var.subaccount_id
  app_name      = "auditlog-viewer"
  plan_name     = "free"
}

# Create the service instances for the subaccounts
data "btp_subaccount_service_plan" "malware_scanner__clamav" {
  subaccount_id = var.subaccount_id
  name          = "clamav"
  offering_name = "malware-scanner"
}

resource "btp_subaccount_service_instance" "malware_scanner__clamav" {
  subaccount_id  = var.subaccount_id
  serviceplan_id = data.btp_subaccount_service_plan.malware_scanner__clamav.id
  name           = "${local.service_name_prefix}-malware-scanner-clamav"
}
