module "subnet" {
  source = "./modules/subnet"
  subnet_name = var.subnet_name
  rg_name = var.rg_name
}

module "app_service_plan" {
  source = "./modules/app_service_plan"
  asp_name = var.asp_name
  rg_name = var.rg_name
  region = var.region
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
