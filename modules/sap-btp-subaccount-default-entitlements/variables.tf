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
