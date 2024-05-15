 output "app_service_name" {
  description = "Name of the App Service"
  value       = azurerm_app_service.new_app_service.name
}

 output "webapp_url" {
  description = "The Default Hostname associated with the App Service"
  value       = azurerm_linux_web_app.app_service_linux.default_hostname
}

 output "webapp_ips" {
    description = "The IP address associated with the App Service"
    value = azurerm_app_service.app_service_linux.outbound_ip_addresses
}

 output "slot_urls" {
  description = "slot urls associated with the slots"
  value       = { for s in azurerm_app_service_slot.slots : s.default_host_name }
}
