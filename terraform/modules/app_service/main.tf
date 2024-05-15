# Azure app service creation
resource "azurerm_app_service" "new_app_service" {
  name                = var.app_service
  location            = var.region
  resource_group_name = var.rg_name
  app_service_plan_id = var.asp_id
  virtual_network_subnet_id = var.subnet_id

  site_config {
    minimum_tls_version = "1.2"
    scm_type = null
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}

# Create slots dynamically
resource "azurerm_app_service_slot" "slots" {
  count = var.slots_enabled ? 1 : 0

  count               = length(var.slot_names)
  name                = var.slot_names[count.index]
  location            = var.region
  resource_group_name = var.rg_name
  app_service_name    = azurerm_app_service.new_app_service.name

  site_config {
    minimum_tls_version = "1.2"
    scm_type = null
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}
