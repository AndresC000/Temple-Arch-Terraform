variable "location" {
  description = "Location"
  type = string
  default = "East US 2"
}

variable "resource_group_name" {
  description = "ResourceGroupName"
  type = string
  default = "rg-Terraform-lab-001"
}


variable "nic_name" {
  description = "NIC-name"
  type = string
  default = "NIC-Lab01-Terraform"
}

variable "vm_name" {
  description = "VM-name"
  type = string
  default = "VM-Lab01-Terraform"
}
variable "vm_size" {
  description = "VM-size"
  type = string
  default = "Standard_D2als_v7"
}
variable "vm_admin_username" {
  description = "VM-admin-username"
  type = string
  default = "adminuser"
}

variable "vm_admin_password" {
  description = "VM-admin-password"
  type = string
    default = "P@ssw0rd1234"
 }

 variable "nic1_name" {
  description = "NIC1-name"
  type = string
  default = "NIC1-Lab01-Terraform"
}

variable "storage_profile_image_reference_publisher" {
  description = "VM-image-publisher"
  type = object ({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  default = {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"    
 }
}

variable "web_subnet_id" {
  description = "web-subnet-id"
  type        = string
}
variable "public_ip_id" {
  description = "public-ip-id"
  type        = string
}