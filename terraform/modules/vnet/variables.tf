# Define input variables

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space of the VNet"
  type        = string
}

variable "region" {
  description = "Azure region where resources will be deployed"
  type        = string
}

variable "rg_name" {
  description = "Name of the resource group where App Service will be deployed"
  type        = string
}
