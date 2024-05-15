output "asp_id" {
  value = data.azurerm_app_service_plan.current_asp.id != null ? data.azurerm_app_service_plan.current_asp : azurerm_app_service_plan.new_asp[0].id
}
