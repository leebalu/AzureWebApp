output "rg_id" {
  value = data.azurerm_resource_group.current_rg.id != null ? data.azurerm_resource_group.current_rg.id : azurerm_resource_group.new_rg[0].id
}
