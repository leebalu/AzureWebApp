# Retrive the current VNET
data "azurerm_virtual_network" "current_vnet" {
  name                = var.vnet_name
  resource_group_name = var.rg_name
}

# Validate if current VNET is not available then create new VNET
resource "azurerm_virtual_network" "new_vnet" {
  count               = data.azurerm_virtual_network.current_vnet.id != null ? 0 : 1

  name                = var.vnet_name
  address_space       = [var.vnet_address_space]
  location            = var.region
  resource_group_name = var.rg_name
}
