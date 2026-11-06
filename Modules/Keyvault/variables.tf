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

variable "keyvault_name" {
  description = "KeyVaultName"
  type = string
  default = "kv-lab01-terraform"
}

variable "keyvault_sku" {
  description = "KeyVaultSku"
  type = object({
    name   = string
    family = string
  })
  default = {
    name   = "standard"
    family = "A"
  }
}

variable "keyvault_access_policy" {
  description = "KeyVaultAccessPolicy"
  type = object ({
    key_permissions = list(string)
    secret_permissions = list(string)
    certificate_permissions = list(string)
  })
  default = {
    key_permissions = ["Get", "List" ]
    secret_permissions = ["Get", "List"]
    certificate_permissions = ["Get", "List"]
  }
}