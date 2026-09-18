<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_name"></a> [name](#module\_name) | app.terraform.io/leshawn-rice/standard-naming/azurerm | n/a |
| <a name="module_tags"></a> [tags](#module\_tags) | app.terraform.io/leshawn-rice/tags/azurerm | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_subscription.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subscription) | resource |
| [azurerm_billing_enrollment_account_scope.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/billing_enrollment_account_scope) | data source |
| [azurerm_billing_mca_account_scope.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/billing_mca_account_scope) | data source |
| [azurerm_billing_mpa_account_scope.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/billing_mpa_account_scope) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_type"></a> [account\_type](#input\_account\_type) | The type of Azure Account. Valid values are 'MCA', 'MPA', & 'EA' | `string` | n/a | yes |
| <a name="input_application"></a> [application](#input\_application) | The application the subscription is being used for. Purely for naming purposes if a name is not provided. | `string` | `null` | no |
| <a name="input_billing_account_name"></a> [billing\_account\_name](#input\_billing\_account\_name) | ID of the Azure Billing Account to create the subscription in. | `string` | n/a | yes |
| <a name="input_billing_profile_name"></a> [billing\_profile\_name](#input\_billing\_profile\_name) | ID of the Azure Billing Profile to create the subscription in. Required for MCA Accounts. | `string` | `null` | no |
| <a name="input_business_unit"></a> [business\_unit](#input\_business\_unit) | The business unit the subscription is being used for. Purely for naming purposes if a name is not provided. | `string` | `null` | no |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | Client ID of the SPN being used by terraform | `string` | n/a | yes |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | Client Secret of the SPN being used by terraform | `string` | n/a | yes |
| <a name="input_customer_name"></a> [customer\_name](#input\_customer\_name) | ID of the Azure Customer to create the subscription for. Required for MPA Accounts. | `string` | `null` | no |
| <a name="input_enrollment_account_name"></a> [enrollment\_account\_name](#input\_enrollment\_account\_name) | ID of the Azure Enrollment Account to create the subscription in. Required for EA Accounts. | `string` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment the subscription is being used for. Purely for naming purposes if a name is not provided. | `string` | `null` | no |
| <a name="input_invoice_section_name"></a> [invoice\_section\_name](#input\_invoice\_section\_name) | ID of the Azure Invoice Section to create the subscription in. Required for MCA Accounts. | `string` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure Region for the subscription. Purely for naming purposes if a name is not provided. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the subscription. If a name is not provided, a name will be generated using the naming convention module | `string` | `null` | no |
| <a name="input_service"></a> [service](#input\_service) | The service the subscription is being used for. Purely for naming purposes if a name is not provided. | `string` | `null` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | ID of an Azure Subscription in the Tenant. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags which should be assigned to the Resource Group<br/><br/>  If 'tags' is not passed, the 'tags' module will be called to create tags | `map(string)` | `null` | no |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | ID of the Azure Tenant | `string` | n/a | yes |
| <a name="input_workload"></a> [workload](#input\_workload) | Workload for the Azure Subscription. Valid values include 'Production' & 'DevTest'. | `string` | `"Production"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alias"></a> [alias](#output\_alias) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_tenant_id"></a> [tenant\_id](#output\_tenant\_id) | n/a |
<!-- END_TF_DOCS -->