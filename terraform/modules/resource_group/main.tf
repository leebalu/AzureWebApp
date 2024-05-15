# Retrive the current ARG
data "azurerm_resource_group" "current_rg" {
  name = var.rg_name
}
# Validate if current ARG is not available then create new ARG
resource "azurerm_resource_group" "new_rg" {
  count    = data.azurerm_resource_group.current_rg.id != null ? 0 : 1

  name     = var.rg_name
  location = var.region
}
