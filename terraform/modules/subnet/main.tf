# Retrive the current SUBNET
data "azurerm_subnet" "current_subnet" {
  name                = var.subnet_name
  resource_group_name = var.rg_name
  virtual_network_name = var.vnet_name
}

# Validate if current SUBNET is not available then create new SUBNET 
resource "azurerm_subnet" "new_subnet" {
  count               = data.azurerm_subnet.current_subnet.id != null ? 0 : 1

  name                 = var.subnet_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = [var.subnet_address_space]
}
