provider "azurerm" {
  # Configuration options
  subscription_id = "381b371f-c06d-4487-a677-8d1e6f61613f"
  features {}
}
# Terraform Block hai jo Microsoft Azure cloud ka use kar raha hai
terraform { 
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

resource "azurerm_resource_group" "rg_alok" {
  name     = var.rg_name
  location = var.rg_location
}

resource "azurerm_storage_account" "rahul" {
  name                     = var.storage_name
  resource_group_name      = azurerm_resource_group.rg_alok.name
  location                 = azurerm_resource_group.rg_alok.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}