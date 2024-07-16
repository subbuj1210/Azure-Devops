# Create Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_cidr
  location            = var.rg_location
  resource_group_name = var.rg_name
}
# Resource-1: Create WebTier Subnet
resource "azurerm_subnet" "websubnet" {
  name                 = var.web_subnet_name
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.web_subnet_address
}
