resource "azurerm_virtual_network" "vnet" {
 name = var.vnet_name
 location = var.location
 resource_group_name= var.resource_group_name

 address_space= [var.vnet_address_space]
}


resource "azurerm_subnet" "mgt" {
    name = var.mgt_name
    resource_group_name = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes = [var.mgt_adress_prefix]
}

resource "azurerm_subnet" "app_gateway" {
    name = var.app_gtw_name
    resource_group_name = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes = [var.app_gateway_subnet]
}

resource "azurerm_subnet" "web" {
    name = var.web_name
    resource_group_name = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes = [var.web_address_space]
}

resource "azurerm_public_ip" "public_ip" {
    name = var.public_ip_name
    location = var.location
    resource_group_name = var.resource_group_name
    allocation_method = "Static"
    sku = "Standard"
}


resource "azurerm_network_security_group" "nsg_web" {
  name = var.nsg_name_web
  location = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_network_security_group" "nsg_mtg" {
  name = var.nsg_name_mgt
  location = var.location
  resource_group_name = var.resource_group_name
  
}

resource "azurerm_network_security_rule" "web_ssh" {
  name                        = var.nsg_name_rule_ssh_admin
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = var.mgt_adress_prefix
  destination_address_prefix  = var.web_address_space
  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.nsg_web.name
}

resource "azurerm_network_security_rule" "web_http" {
  name                        = var.nsg_rule_name_http
  priority                    = 200
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = var.app_gateway_subnet
  destination_address_prefix  = var.web_address_space
  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.nsg_web.name
}

resource "azurerm_subnet_network_security_group_association" "web_nsg_association" {
  subnet_id                 = azurerm_subnet.web.id
  network_security_group_id = azurerm_network_security_group.nsg_web.id
}

resource "azurerm_network_security_rule" "nsg_mgt" {
  name                = var.nsg_name_rule_mgt
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = var.mgt_adress_prefix
  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.nsg_mtg.name

}

resource "azurerm_subnet_network_security_group_association" "mgt_nsg_association" {
  subnet_id                 = azurerm_subnet.mgt.id
  network_security_group_id = azurerm_network_security_group.nsg_mtg.id
}