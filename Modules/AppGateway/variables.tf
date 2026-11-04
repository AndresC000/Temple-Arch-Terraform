
variable "location" {
    description = "The location of the Application Gateway."
    type        = string
    default     = "East US 2"
}

variable "resource_group_name" {
    description = "The name of the resource group in which to create the Application Gateway."
    type        = string
    default = "rg-Terraform-lab-001"
}

variable "AppGateway_name" {
    description = "The name of the Application Gateway."
    type        = string
    default     = "appgateway"
}

variable "app_gateway_subnet" {
    description = "The ID Application Gateway."
    type        = string
} 

variable "public_ip" {
    description = "Pulic Ip id"
    type        = string
}
