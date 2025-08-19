variable "globalaccount" {
  type        = string
  description = "The subdomain of the global account on SAP BTP"
}

variable "username" {
  type        = string
  description = "The username for authentication against SAP BTP"
  ephemeral   = true
  sensitive   = true
}

variable "password" {
  type        = string
  description = "The password for authentication against SAP BTP"
  ephemeral   = true
  sensitive   = true
}

variable "idp" {
  type        = string
  description = "The identity provider to use for authentication"
  default     = null
}

variable "subsidiary_name" {
  type        = string
  description = <<-EOT
    The names of the subsidiary.
    This name is used for the corresponding directory in SAP BTP.
  EOT
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
