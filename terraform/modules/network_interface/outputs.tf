output "ani_id" {
  value = data.azurerm_network_interface.current_ani.id != null ? data.azurerm_network_interface.current_ani : azurerm_virtual_network.new_ani[0].id
}
