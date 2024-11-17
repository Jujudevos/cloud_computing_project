resource "azurerm_virtual_network" "virtual_network" {
  name                = var.network_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.group_name
}

resource "azurerm_subnet" "subnet" {
  name= var.subnet_name
  resource_group_name  = var.group_name
  virtual_network_name = azurerm_virtual_network.virtual_network.network_name
  address_prefixes = var.subnet_adress
}