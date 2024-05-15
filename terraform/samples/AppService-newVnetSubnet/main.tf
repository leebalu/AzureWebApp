 
module "resource_group" {
  source = "./modules/resource_group"
  region = var.region
  rg_name = var.rg_name
}
 
module "vnet" {
  source = "./modules/vnet"
  vnet_name = var.vnet_name
  vnet_address_space = var.vnet_address_space
  region = var.region
  rg_name = var.rg_name
}	

module "subnet" {
  source = "./modules/subnet"
  subnet_name = var.subnet_name
  rg_name = var.rg_name
  vnet_name = var.vnet_name
  subnet_address_space = var.subnet_address_space
}

module "network_interface" {
  source = "./modules/network_interface"
  ni_name = var.ni_name
  region = var.region
  rg_name = var.rg_name
  ip_config_name = var.ip_config_name
  subnet_id = modules.subnet.subnet_id
}

module "app_service_plan" {
  source = "./modules/app_service_plan"
  asp_name = var.asp_name
  rg_name = var.rg_name
  region = var.region
  ip_config_name = var.ip_config_name
}

module "app_service" {
  source = "./modules/app_service"
  app_servicename = var.app_service_name
  region = var.region
  rg_name = var.rg_name
  virtual_network_subnet_id = modules.subnet.subnet_id
  asp_id = modules.app_service_plan.asp_id 
  slots_enabled = var.slots_enabled
}

