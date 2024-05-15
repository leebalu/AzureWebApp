# Define input variables

variable "ni_name" {
  description = "Name of the Network Interface"
  type        = string
}

variable "rg_name" {
  description = "Name of the resource group where App Service will be deployed"
  type        = string
}

variable "region" {
  description = "Azure region where resources will be deployed"
  type        = string
}

variable "ip_config_name" {
  description = "Name of the ip_configuration"
  type        = string
}

variable "subnet_name" {
  description = "Name of the Subnet within the Virtual Network"
  type        = string
}
