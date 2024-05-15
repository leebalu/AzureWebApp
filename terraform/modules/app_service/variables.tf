# Define input variables

variable "app_service" {
  description = "Name of the app_service"
  type        = string
  default     = webApp_linux
}

variable "subnet_id" {
  description = "Subnet id information"
  type        = string
  default     = null
}

variable "asp_id" {
  type        = string
  description = "id of the App Service Plan"
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

# Define a list of slot names
variable "slot_names" {
  description = "Names of the slots (e.g., ["dev-1", "dev-2"])"
  type        = list(string)
  default = ["dev-1"] # Add more slots as needed
}

variable "slots_enabled" {
  type        = bool
  description = "Boolean to Create a slot"
  default     = true
}
