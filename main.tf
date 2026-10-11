data "azurerm_billing_mpa_account_scope" "billing_mpa_account_scope_lookup" {
  for_each = var.billing_mpa_account_scope_lookup

  billing_account_name = each.value.billing_account_name
  customer_name        = each.value.customer_name
}

