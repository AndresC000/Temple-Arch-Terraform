resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  location                 = var.location
  resource_group_name      = var.resource_group_name


  account_kind                     = var.properties_storage_account["account_kind"]  
  account_replication_type = var.properties_storage_account["account_replication_type"]
  access_tier             = var.properties_storage_account["account_access_tier"]
  account_tier                     = var.properties_storage_account["account_tier"]
}