variable "cloud_stack_service_accounts" {
  description = <<EOT
Map of cloud_stack_service_accounts, attributes below
Required:
    - name
    - role
    - stack_slug
Optional:
    - is_disabled
EOT

  type = map(object({
    name        = string
    role        = string
    stack_slug  = string
    is_disabled = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloud_stack_service_accounts : (
        contains(["Viewer", "Editor", "Admin", "None"], v.role)
      )
    ])
    error_message = "must be one of: \"Viewer\", \"Editor\", \"Admin\", \"None\""
  }
}

