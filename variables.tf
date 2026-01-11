# Variable for the resource group location
variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "Central US"
}

# Variable for the resource group name
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "myTFResourceGroup"
}

# Variable for the virtual machine size
variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_D2s_v3"
}

# Variable for the admin username
variable "admin_username" {
  description = "Admin username for the virtual machine"
  type        = string
  default     = "azureuser"
}

# Variable for the virtual network address space
variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["172.50.0.0/24"]
}

# Variable for the subnet address prefix
variable "subnet_address_prefix" {
  description = "Address prefix for the subnet"
  type        = list(string)
  default     = ["172.50.0.0/28"]
}

# Variable for environment tag
variable "environment" {
  description = "Environment tag for resources"
  type        = string
  default     = "development"
}