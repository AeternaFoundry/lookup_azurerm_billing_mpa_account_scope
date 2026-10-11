output "billing_mpa_account_scope_lookup_id" {
  description = "Map of id values across all billing_mpa_account_scope_lookup, keyed the same as var.billing_mpa_account_scope_lookup"
  value       = { for k, v in data.azurerm_billing_mpa_account_scope.billing_mpa_account_scope_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "billing_mpa_account_scope_lookup_billing_account_name" {
  description = "Map of billing_account_name values across all billing_mpa_account_scope_lookup, keyed the same as var.billing_mpa_account_scope_lookup"
  value       = { for k, v in data.azurerm_billing_mpa_account_scope.billing_mpa_account_scope_lookup : k => v.billing_account_name if v.billing_account_name != null && length(v.billing_account_name) > 0 }
}
output "billing_mpa_account_scope_lookup_customer_name" {
  description = "Map of customer_name values across all billing_mpa_account_scope_lookup, keyed the same as var.billing_mpa_account_scope_lookup"
  value       = { for k, v in data.azurerm_billing_mpa_account_scope.billing_mpa_account_scope_lookup : k => v.customer_name if v.customer_name != null && length(v.customer_name) > 0 }
}

