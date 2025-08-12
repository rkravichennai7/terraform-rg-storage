resource "azurerm_storage_account" "rahul11" {
depends_on = [ azurerm_resource_group.rg_alok ]
  name                     = var.storage_name_explicit
  resource_group_name      = "sanjay"
  location                 = "east us"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}