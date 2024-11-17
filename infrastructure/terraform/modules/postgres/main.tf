resource "azurerm_resource_group" "project" {
  name     = var.group_name
  location = var.location
}

resource "azurerm_postgresql_flexible_server" "project" {
  name                          = var.name
  server_name = var.server_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  public_network_access_enabled = var.public_network_access_enabled
  administrator_login           = var.administrator_login
  administrator_password        = var.administrator_password

  storage_mb  = var.storage_mb
  sku_name = var.sku_name
  version = var.version_sql

}