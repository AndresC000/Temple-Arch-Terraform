output "AppGateway_id" {
  value = azurerm_application_gateway.appgw.id
  
}

output "AppGateway_name" {
  value = azurerm_application_gateway.appgw.name
}

output "public_ip_id" {
  value = azurerm_public_ip.public_ip.id
}
