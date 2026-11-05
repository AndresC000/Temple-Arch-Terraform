resource "azurerm_resource_group" "rg" {
    name     = var.resource_group_name
    location = var.location
}

module "Network" {
    source = "./Modules/Network"
    location = var.location
    resource_group_name = azurerm_resource_group.rg.name
}

module "Compute" {
    source = "./Modules/Compute"
    location = var.location
    resource_group_name = azurerm_resource_group.rg.name
    web_subnet_id = module.Network.subnet_web_id
    public_ip_id = module.Network.public_ip_id
}

module "Storage" {
    source = "./Modules/Storage"
    location = var.location
    resource_group_name = azurerm_resource_group.rg.name
}

module "Keyvault" {
    source = "./Modules/Keyvault"
    location = var.location
    resource_group_name = azurerm_resource_group.rg.name

}

module "Monitor" {
    source = "./Modules/Monitor"
    location = var.location
    resource_group_name = azurerm_resource_group.rg.name
}

module "AppGateway" {
    source = "./Modules/AppGateway"
    location = var.location
    resource_group_name = azurerm_resource_group.rg.name
    AppGateway_name = module.AppGateway.AppGateway_name
    app_gateway_subnet = module.AppGateway.subnet_appgw_id
    public_ip = module.AppGateway.public_ip_id

}

