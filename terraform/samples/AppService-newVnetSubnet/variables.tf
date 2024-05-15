# Define input variables

variable "rg_name" {
  description = "Name of the resource group where App Service will be deployed"
  type        = string
}

variable "region" {
  description = "Azure region where resources will be deployed"
  type        = string
}

variable "subnet_name" {
  description = "Name of the Subnet within the subnetwork"
  type        = string
}
