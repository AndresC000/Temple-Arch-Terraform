output "AppGateway_id" {
  value = azurerm_application_gateway.AppGateway.id
  
}

output "AppGateway_name" {
  value = azurerm_application_gateway.AppGateway.name
}

output "public_ip_id" {
  value = azurerm_public_ip.id
}
