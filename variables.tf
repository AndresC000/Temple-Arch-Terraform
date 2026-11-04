variable "location" {
    description = "location"
    type        = string
    default     = "East US 2"
}

variable "resource_group_name" {
    description = "resource group name"
    type        = string
    default     = "rg-Terraform-lab-001"
}

variable "subnet_web_id" {
    description = "subnet web id"
    type        = string
}
variable "public_ip_id" {
    description = "public ip id"
    type        = string
}