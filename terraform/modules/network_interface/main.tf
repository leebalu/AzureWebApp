# Retrive the current ANI
data "azurerm_network_interface" "current_ani" {
  name                = var.ni_name
  resource_group_name = var.rg_name
}


# Validate if current ANI is not available then create new ANI
resource "azurerm_network_interface" "new_ani" {
  count               = data.azurerm_network_interface.current_ani.id != null ? 0 : 1

  name                = var.ni_name
  location            = var.region
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = var.ip_config_name
    subnet_id                     = subnet_id /////////////////// Need to check
    private_ip_address_allocation = "Dynamic"
  }
}
