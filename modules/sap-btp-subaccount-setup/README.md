# SAP BTP - Default Subaccount Setup

This module encapsulates the default setup for SAP BTP subaccounts. It distinguishes between the different development stages of the environment (Dev, Test, Prod) and provides a default set of entitlements for each stage. In addition it provides the setup for the Cloud Foundry environment.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.12 |
| <a name="requirement_btp"></a> [btp](#requirement\_btp) | >= 1.16.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_btp"></a> [btp](#provider\_btp) | >= 1.16.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_sap_btp_entitlements"></a> [sap\_btp\_entitlements](#module\_sap\_btp\_entitlements) | aydin-ozcan/sap-btp-entitlements/btp | ~> 1.0.1 |
| <a name="module_sap_btp_subaccount_default_app_service_instances"></a> [sap\_btp\_subaccount\_default\_app\_service\_instances](#module\_sap\_btp\_subaccount\_default\_app\_service\_instances) | ../../modules/sap-btp-default-apps-and-services | n/a |
| <a name="module_sap_btp_subaccount_default_users"></a> [sap\_btp\_subaccount\_default\_users](#module\_sap\_btp\_subaccount\_default\_users) | ../../modules/sap-btp-subaccount-default-users | n/a |
| <a name="module_subaccount_default_entitlements"></a> [subaccount\_default\_entitlements](#module\_subaccount\_default\_entitlements) | ../../modules/sap-btp-subaccount-default-entitlements | n/a |

## Resources

| Name | Type |
|------|------|
| [btp_subaccount.self](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount) | resource |
| [btp_subaccount_environment_instance.cloudfoundry](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_environment_instance) | resource |
| [random_uuid.self](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/uuid) | resource |
| [terraform_data.cf_landscape_label](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/resources/data) | resource |
| [terraform_data.landscape_label_index](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/resources/data) | resource |
| [btp_subaccount_environments.all](https://registry.terraform.io/providers/SAP/btp/latest/docs/data-sources/subaccount_environments) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | The ID of the parent directory or subaccount where the new subaccount will be created. | `string` | n/a | yes |
| <a name="input_stage"></a> [stage](#input\_stage) | Stage of the environment to be setup up.<br/>Possible values: `Dev`, `Test`, `Prod`. | `string` | n/a | yes |
| <a name="input_subaccounts"></a> [subaccounts](#input\_subaccounts) | A map of subaccounts where the key is the subaccount name, and the value is an object containing:<br/>- region: The region where the subaccount is located<br/>- cost\_center: The cost center associated with the subaccount<br/>- contact\_person: The contact person for the subaccount<br/>- department: The department associated with the subaccount | <pre>map(object({<br/>    region         = string<br/>    cost_center    = string<br/>    contact_person = string<br/>    department     = string<br/>  }))</pre> | n/a | yes |
| <a name="input_subsidiary_name"></a> [subsidiary\_name](#input\_subsidiary\_name) | The name of the subsidiary. | `string` | n/a | yes |

## Outputs

No outputs.
