
data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvault" {
    name                        = var.keyvault_name
    location                    = var.location
    resource_group_name         = var.resource_group_name
    tenant_id                   = data.azurerm_client_config.current.tenant_id
    sku_name                    = var.keyvault_sku.name
    rbac_authorization_enabled  = false
    soft_delete_retention_days  = 7
   
}
resource "azurerm_key_vault_access_policy" "keyvault_access_policy" {
    key_vault_id = azurerm_key_vault.keyvault.id
    tenant_id    = data.azurerm_client_config.current.tenant_id
    object_id    = data.azurerm_client_config.current.object_id

    key_permissions         = var.keyvault_access_policy.key_permissions
    secret_permissions      = var.keyvault_access_policy.secret_permissions
    certificate_permissions = var.keyvault_access_policy.certificate_permissions
}