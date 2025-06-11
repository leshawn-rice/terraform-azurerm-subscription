locals {
  billing_scope_id = (
    var.account_type == "MCA" && length(data.azurerm_billing_mca_account_scope.this) > 0
    ? data.azurerm_billing_mca_account_scope.this[0].id :
    var.account_type == "MPA" && length(data.azurerm_billing_mpa_account_scope.this) > 0
    ? data.azurerm_billing_mpa_account_scope.this[0].id :
    var.account_type == "EA" && length(data.azurerm_billing_enrollment_account_scope.this) > 0
    ? data.azurerm_billing_enrollment_account_scope.this[0].id :
    null
  )
}
