resource "azurerm_resource_group" "tfexample" {
  name     = "tfexample-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "tfexample" {
  name                     = "tfexamplestoraccount"
  resource_group_name      = azurerm_resource_group.tfexample.tfexample
  location                 = azurerm_resource_group.tfexample.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "tfstaging"
  }
}

resource "azurerm_storage_container" "tfexample" {
  name                  = "tfvhds"
  storage_account_name  = azurerm_storage_account.tfexample.tfexample
  container_access_type = "private"
}