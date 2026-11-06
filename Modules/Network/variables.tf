variable "resource_group_name" {
  description = "RG-name"
  type = string
  default = "rg-Terraform-lab-001"
  
}

variable "location" {
  description = "location"
  type = string
  default = "East US 2"
}

variable "public_ip_name" {
    description = "PublicIPname"
    type = string
    default = "Public-IP"
}

variable "vnet_name" {
  description = "VnetName"
  type = string
  default = "vnet-secure-app"
}
variable "vnet_address_space" {
   description = "Virtual Network Address Space"
   type = string
   default = "10.1.0.0/16"
}

variable "mgt_name" {
  description = "MgtName"
  type = string
  default = "Mgmt-subnet"
}

variable "mgt_adress_prefix" { 
 description = "Mgt-subnet Address Space"
 type = string
 default = "10.1.3.0/24"
}

variable "app_gtw_name" {
  description = "AppGatewayname"
  type = string
  default = "AppGateway-lab-Terraform"
}

variable "app_gateway_subnet"{
  description = "AppGateway-subnet Address Space"
  type = string
  default = "10.1.2.0/24"
}

variable "web_name" {
  description = "Web-subnet"
  type = string
  default = "web-Subnet"
}
variable "web_address_space"{
  description = "web-subnet Address Space"
  type = string
  default = "10.1.1.0/24"
}


variable "nsg_name" {
  description = "NSG-name"
  type = string
  default = "NSG-Lab01-Terraform"
}

variable "nsg_name_web" {
  description = "NSG-name"
  type = string
  default = "NSG-Web"
}
variable "nsg_name_mgt"{
  description = "NSG-name-Mgt"
  type = string
  default = "NSG-Mgt"
}










variable "nsg_rule_name_http" {
  description = "NSG-rule-name"
  type = string
  default = "NSG-Rule-HTTP"
}


variable "nsg_name_rule_ssh_admin" {
  description = "NSG-name-rule-ssh-admin"
  type = string
  default = "Allow-SSH-Admin"
}

variable "nsg_name_rule_mgt" {
  description = "NSG-name-rule-mgt"
  type = string
  default = "Allow-TCP-22-Mgt"
}