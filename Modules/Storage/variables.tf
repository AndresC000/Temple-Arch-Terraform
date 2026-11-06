variable "location" {
  description = "Location"
  type = string
  default = "East US 2"
}

variable "resource_group_name" {
  description = "ResourceGroupName"
  type = string
  default = "rg-Terraform-lab-001"
}

variable "storage_account_name" {
  description = "StorageAccountName"
  type = string
  default = "storagtfandlab001"
}

variable "properties_storage_account" {
  description = "StorageAccountKind"
  type = object({
    account_kind = string
    account_replication_type = string
    account_access_tier = string
    account_tier = string
  })
  default = {
    account_kind = "StorageV2"
    account_replication_type = "LRS"
    account_access_tier = "Hot"
    account_tier = "Standard"
    
  }
}
