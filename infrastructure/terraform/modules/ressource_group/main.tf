resource "azurerm_resource_group" "project" {
  name     = var.group_name
  location = var.location
}