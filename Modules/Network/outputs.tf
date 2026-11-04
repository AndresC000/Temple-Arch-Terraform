output "vnet-id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet-web-id" {
  value = azurerm_subnet.web.id
}
output "subnet-mgt-id" {
  value = azurerm_subnet.mgt.id
}
output "subnet-app-gateway-id" {
  value = azurerm_subnet_appgateway.subnet_app_gateway.id
}
output "public-ip-id" {
  value = azurerm_public_ip.public_ip.id
}
