variable "location" {
  description = "The location where the resources will be deployed."
  type        = string
  default     = "East US 2"
}

variable "resource_group_name" {
  description = "The name of the resource group where the resources will be deployed."
  type        = string
  default = "rg-Terraform-lab-001"
}

variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics workspace."
  type        = string
  default     = "log-analytics-lab-terraform"
}

variable "log_analytics_workspace_sku" {
  description = "The SKU of the Log Analytics workspace."
  type        = object({
    name = string
    retention_in_days = number
  })
    default = {
        name              = "PerGB2018"
        retention_in_days = 30
    }
}