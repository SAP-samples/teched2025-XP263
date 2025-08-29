locals {
  service_name_prefix = "${var.stage}-${var.department}"
}

# Create the app subscrioptions for the subaccounts
resource "btp_subaccount_subscription" "ai_launchpad" {
  subaccount_id = var.subaccount_id
  app_name      = "ai-launchpad"
  plan_name     = "standard"
}

# Create the service instances for the subaccounts
data "btp_subaccount_service_plan" "alert_notification__standard" {
  subaccount_id = var.subaccount_id
  name          = "standard"
  offering_name = "alert-notification"
}

resource "btp_subaccount_service_instance" "alert_notification__standard" {
  subaccount_id  = var.subaccount_id
  serviceplan_id = data.btp_subaccount_service_plan.alert_notification__standard.id
  name           = "${local.service_name_prefix}-alert-notification-standard"
}

data "btp_subaccount_service_plan" "credstore__standard" {
  subaccount_id = var.subaccount_id
  name          = "standard"
  offering_name = "credstore"
}

resource "btp_subaccount_service_instance" "credstore__standard" {
  subaccount_id  = var.subaccount_id
  serviceplan_id = data.btp_subaccount_service_plan.credstore__standard.id
  name           = "${local.service_name_prefix}-credstore-standard"
}
