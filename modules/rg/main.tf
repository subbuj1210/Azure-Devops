# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  name = var.rg_name
  location = var.rg_location
}