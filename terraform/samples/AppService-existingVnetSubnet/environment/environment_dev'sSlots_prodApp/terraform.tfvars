region               = "<EAST US>" // Enter the existing/Create region name to create the webapp
rg_name              = "<myapp-resources>" // Enter the existing/Create Azure resource group name to create the webapp
client_id            = "<XXXX>" // Enter the existing Azure client_id to create the webapp
Tenant_id            = "XXXX" // Enter the existing Azure Tenant_id to create the webapp
subscription_name    = "XXXX" // Enter the existing Azure subscription to create the webapp
vnet_name            = "<myapp_vnet>" // Enter the existing/Create Azure virtual network name to create the webapp
subnet_name          = "<myapp_subnet>" // Enter the existing/Create Azure sub network name to create the webapp
asp_name             = "<mywebappPlan>" // Enter the existing/Create Azure app service plan name to create the webapp
app_service          = "<mywebapp>" // Enter the existing/Create Azure app service name to create the webapp
slot_names           = ["dev-1", "dev-2"] // Enter the Create Azure app service slots  name to create the webapp
