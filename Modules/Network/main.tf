resource "azurerm_virtual_network" "vnet" {
 name = var.vnet_name
 location = var.location
 resource_group_name= var.resource_group_name

 address_space= [var.vnet_address_space]
}


resource "azurerm_subnet_mgt" "subnet_mgt" {
 name= var.mgt_name
 location= var.location
 resource_group_name= var.resource_group_name
 
 address_space= [var.mgt_adress_prefix]
}

resource "azurerm_subnet_appgateway" "subnet_app_gateway" {
 name=var.app_gtw_name
 location= var.location
 resource_group_name= var.resource_group_name

 address_space= [var.app_gateway_subnet]
}

resource "azurerm-subnet" "name" {
  
}