terraform {
  backend "azurerm" {
    storage_account_name = "azurebackendstoragebackend"
    container_name = "backend"
    key = "terraform.tfstate"
    access_key = ""
  }
}
