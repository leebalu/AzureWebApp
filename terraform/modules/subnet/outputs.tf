output "subnet_id" {
  value = data.azurerm_subnet.current_subnet.id != null ? data.azurerm_subnet.current_subnet.id : azurerm_virtual_network.new_subnet[0].id
}
