variable "tenant_id" {
  type        = string
  description = "ID of the Azure Tenant"
}

variable "client_id" {
  type        = string
  description = "Client ID of the SPN being used by terraform"
}

variable "client_secret" {
  type        = string
  sensitive   = true
  description = "Client Secret of the SPN being used by terraform"
}

variable "subscription_id" {
  type        = string
  description = "ID of an Azure Subscription in the Tenant."
}

variable "account_type" {
  type        = string
  description = "The type of Azure Account. Valid values are 'MCA', 'MPA', & 'EA'"

  validation {
    error_message = "'account_type' must be one of ['MPA', 'MCA', 'EA']"
    condition     = contains(["MPA", "MCA", "EA"], var.account_type)
  }
}

variable "billing_account_name" {
  type        = string
  description = "ID of the Azure Billing Account to create the subscription in."
}

variable "customer_name" {
  type        = string
  description = "ID of the Azure Customer to create the subscription for. Required for MPA Accounts."
  default     = null

  validation {
    error_message = "When 'account_type' is 'MPA', 'customer_name' is required"
    condition     = var.account_type == "MPA" ? var.customer_name != null : true
  }
}

variable "enrollment_account_name" {
  type        = string
  description = "ID of the Azure Enrollment Account to create the subscription in. Required for EA Accounts."
  default     = null

  validation {
    error_message = "When 'account_type' is 'EA', 'enrollment_account_name' is required"
    condition     = var.account_type == "EA" ? var.enrollment_account_name != null : true
  }
}

variable "billing_profile_name" {
  type        = string
  description = "ID of the Azure Billing Profile to create the subscription in. Required for MCA Accounts."
  default     = null
  validation {
    error_message = "When 'account_type' is 'MCA', 'billing_profile_name' is required"
    condition     = var.account_type == "MCA" ? var.billing_profile_name != null : true
  }
}

variable "invoice_section_name" {
  type        = string
  description = "ID of the Azure Invoice Section to create the subscription in. Required for MCA Accounts."
  default     = null
  validation {
    error_message = "When 'account_type' is 'MCA', 'invoice_section_name' is required"
    condition     = var.account_type == "MCA" ? var.invoice_section_name != null : true
  }
}

variable "workload" {
  type        = string
  description = "Workload for the Azure Subscription. Valid values include 'Production' & 'DevTest'."
  default     = "Production"

  validation {
    error_message = "When 'account_type' is 'MCA', 'workload' must be 'Production'"
    condition     = var.account_type == "MCA" ? var.workload == "Production" : true
  }

  validation {
    error_message = "'workload' must be one of ['Production', 'DevTest']"
    condition     = contains(["Production", "DevTest"], var.workload)
  }
}

variable "application" {
  type        = string
  description = "The application the subscription is being used for. Purely for naming purposes if a name is not provided."
  default     = null
}

variable "environment" {
  type        = string
  description = "The environment the subscription is being used for. Purely for naming purposes if a name is not provided."
  default     = null
}

variable "business_unit" {
  type        = string
  description = "The business unit the subscription is being used for. Purely for naming purposes if a name is not provided."
  default     = null
}

variable "service" {
  type        = string
  description = "The service the subscription is being used for. Purely for naming purposes if a name is not provided."
  default     = null
}

variable "location" {
  type        = string
  description = "Azure Region for the subscription. Purely for naming purposes if a name is not provided."
  default     = null
}

variable "name" {
  type        = string
  description = "The name of the subscription. If a name is not provided, a name will be generated using the naming convention module"
  default     = null
}

variable "tags" {
  type        = map(string)
  description = <<DESCRIPTION
  (Optional) A mapping of tags which should be assigned to the Resource Group

  If 'tags' is not passed, the 'tags' module will be called to create tags
  DESCRIPTION
  default     = null
}
