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

