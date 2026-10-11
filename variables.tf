variable "billing_mpa_account_scope_lookup" {
  description = <<EOT
Map of billing_mpa_account_scope_lookup, attributes below
Required:
    - billing_account_name
    - customer_name
EOT

  type = map(object({
    billing_account_name = string
    customer_name        = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.billing_mpa_account_scope_lookup : (
        length(v.billing_account_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.billing_mpa_account_scope_lookup : (
        length(v.customer_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

