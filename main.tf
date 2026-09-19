resource "azurerm_subscription" "this" {
  subscription_name = var.name != null ? var.name : module.name[0].name
  tags              = var.tags != null ? var.tags : module.tags[0].tags

  workload         = var.workload
  billing_scope_id = local.billing_scope_id
}
