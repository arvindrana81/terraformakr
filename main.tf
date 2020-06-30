resource "azurerm_resource_group" "resource_gp" {
  name     = "Arvind-TF-RG"
  location = "eastus"

  tags = {
    "Owner" = "Arvind Kumar TF"
  }
}
