output "default_entitlements_for_stage" {
  value       = local.default_entitlements[var.stage]
  description = "Default entitlements for stage specified by the stage variable"
}
