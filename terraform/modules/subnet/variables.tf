# Define input variables

variable "subnet_name" {
  description = "Name of the Subnet within the subnetwork"
  type        = string
}

variable "rg_name" {
  description = "Name of the resource group where App Service will be deployed"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "subnet_address_space" {
  description = "Address space of the Subnet"
  type        = string
}
