# Define input variables

variable "asp_name" {
  type        = string
  description = "Name of the App Service Plan"
  default     = webApp_linux_plan
}

variable "rg_name" {
  description = "Name of the resource group where App Service will be deployed"
  type        = string
  default     = null
}

variable "region" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = null
}
