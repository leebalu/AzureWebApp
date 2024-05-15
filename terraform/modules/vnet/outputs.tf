output "vnet_id" {
  value = data.azurerm_virtual_network.current_vnet.id != null ? data.azurerm_virtual_network.current_vnet.id : azurerm_virtual_network.new_vnet[0].id
}
