terraform {
  backend "azurerm" {

    storage_account_name    = "backend12"
    container_name          = "tfstatehubnspoke"
    resource_group_name     = "hubnspoke"
    key                     = "terrform.tfstate"
  }
  
}

resource "azurerm_resource_group" "statedemo" {
    name = "statedemo"
    location = "eastus"
}
