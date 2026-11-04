resource "azurerm_application_gateway" "AppGateway" {
    name                = var.AppGateway_name
    location            = var.location
    resource_group_name = var.resource_group_name
    
    sku {
        name     = "Standard_v2"
        tier     = "Standard_v2"
        capacity = 2
    }
    
    gateway_ip_configuration {
        name      = "appGatewayIpConfig"
        subnet_id = var.app_gateway_subnet
    }
    
    frontend_port {
        name = "frontendPort"
        port = 80
    }
    
    frontend_ip_configuration {
        name                 = "frontendIpConfig"
        public_ip_address_id = var.public_ip
    }
    
    backend_address_pool {
        name = "backendPool"
    }
    
    backend_http_settings {
        name                  = "backendHttpSettings"
        cookie_based_affinity = "Disabled"
        port                  = 80
        protocol              = "Http"
        request_timeout       = 20
 }

    http_listener {
        name                           = "httpListener"
        frontend_ip_configuration_name = "frontendIpConfig"
        frontend_port_name             = "frontendPort"
        protocol                       = "Http"
    }
    request_routing_rule {
        name                       = "routingRule"
        rule_type                  = "Basic"
        priority                   = 100
        http_listener_name         = "httpListener"
        backend_address_pool_name  = "backendPool"
        backend_http_settings_name = "backendHttpSettings"
    }
} 