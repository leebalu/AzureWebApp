#Validate existing Azure app service plan if not create new
data "azurerm_app_service_plan" "current_asp"{
  name                = var.asp_name
  resource_group_name = var.rg_name
}

# Create the Linux App Service Plan
resource "azurerm_service_plan" "new_asp" {
  name                = var.asp_name
  location            = var.region
  resource_group_name = var.rg_name
  kind                = "Linux"
  reserved            = true
  sku {
    tier = "Standard"
    size = "S1"
  }
}
