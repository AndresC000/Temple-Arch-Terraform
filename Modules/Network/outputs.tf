output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_web_id" {
  value = azurerm_subnet.web.id
}
output "subnet_mgt_id" {
  value = azurerm_subnet.mgt.id
}
output "subnet_app_gateway_id" {
  value = azurerm_subnet.app_gateway.id
}
output "public_ip_id" {
  value = azurerm_public_ip.public_ip.id
}
