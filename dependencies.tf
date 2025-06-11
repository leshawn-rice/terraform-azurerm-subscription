module "name" {
  source = "app.terraform.io/leshawn-rice/standard-naming/azurerm"

  count = var.name == null ? 1 : 0

  resource_type = "sub"
  application   = var.application
  environment   = var.environment
  location      = var.location
  business_unit = var.business_unit
}


module "tags" {
  source = "app.terraform.io/leshawn-rice/tags/azurerm"

  count = var.tags == null ? 1 : 0

  application   = var.application
  environment   = var.environment
  business_unit = var.business_unit
  workload      = var.workload
  service       = var.service
  created_by    = "Terraform"
  created_at    = formatdate("YYYY-MM-DD", timestamp())
}
