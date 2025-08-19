variable "subsidiary_name" {
  type        = string
  description = "The name of the subsidiary."
}

variable "stage" {
  type        = string
  description = <<-EOT
    Stage of the environment to be setup up.
    Possible values: `Dev`, `Test`, `Prod`.
  EOT

  validation {
    condition     = contains(["Dev", "Test", "Prod"], var.stage)
    error_message = "Stage must be one of the following: `Dev`, `Test`, `Prod`."
  }
}

variable "parent_id" {
  type        = string
  description = "The ID of the parent directory or subaccount where the new subaccount will be created."
}

variable "subaccounts" {
    type = map(object({
    region         = string
    cost_center    = string
    contact_person = string
  }))
  description = <<-EOT
    A map of subaccounts where the key is the subaccount name, and the value is an object containing:
    - region: The region where the subaccount is located
    - cost_center: The cost center associated with the subaccount
    - contact_person: The contact person for the subaccount
  EOT
}
