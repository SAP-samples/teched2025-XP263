# SAP BTP - Default Subaccount Entitlements

This module encapsulates the default service instances and app subscriptions for SAP BTP subaccounts.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.12 |
| <a name="requirement_btp"></a> [btp](#requirement\_btp) | >= 1.16.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_btp"></a> [btp](#provider\_btp) | >= 1.16.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [btp_subaccount_service_instance.malware_scanner__clamav](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_service_instance) | resource |
| [btp_subaccount_subscription.auditlog_viewer__free](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_subscription) | resource |
| [btp_subaccount_service_plan.malware_scanner__clamav](https://registry.terraform.io/providers/SAP/btp/latest/docs/data-sources/subaccount_service_plan) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_department"></a> [department](#input\_department) | The department associated with the subaccount. | `string` | n/a | yes |
| <a name="input_stage"></a> [stage](#input\_stage) | Stage of the environment to be setup up.<br/>Possible values: `Dev`, `Test`, `Prod`. | `string` | n/a | yes |
| <a name="input_subaccount_id"></a> [subaccount\_id](#input\_subaccount\_id) | The ID of the subaccount where the default users will be added. | `string` | n/a | yes |

## Outputs

No outputs.
