# SAP BTP - Default Subaccount Entitlements

This module encapsulates the default entitlements for SAP BTP subaccounts. It distinguishes between the different development stages of the environment (Dev, Test, Prod, Shared) and provides a default set of entitlements for each stage.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_stage"></a> [stage](#input\_stage) | Stage of the environment to be setup up.<br/>Possible values: `Dev`, `Test`, `Prod`, `Shared`. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_entitlements_for_stage"></a> [default\_entitlements\_for\_stage](#output\_default\_entitlements\_for\_stage) | Default entitlements for stage specified by the stage variable |
