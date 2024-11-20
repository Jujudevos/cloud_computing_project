resource "azurerm_private_dns_zone" "project" {
  name                = var.dns_name
  resource_group_name = var.group_name
}


resource "azurerm_private_dns_zone_virtual_network_link" "project" {
  name                  = var.name_dns_link
  private_dns_zone_name = azurerm_private_dns_zone.project.name
  virtual_network_id    = var.virtual_network_id
  resource_group_name   = var.group_name
}


resource "azurerm_postgresql_flexible_server" "project" {
  name                          = var.flexible_server_name
  resource_group_name           = var.group_name
  location                      = var.location
  version                       = "14"
  delegated_subnet_id           = var.subnet_id
  private_dns_zone_id           = azurerm_private_dns_zone.project.id
  public_network_access_enabled = false
  administrator_login           = var.administrator_login
  administrator_password        = var.administrator_password

  storage_mb   = 32768
  storage_tier = "P4"

  sku_name   = "B_Standard_B1ms"
  depends_on = [azurerm_private_dns_zone_virtual_network_link.project]

}

resource "azurerm_postgresql_flexible_server_database" "project" {
  name      = var.data_name
  server_id = azurerm_postgresql_flexible_server.project.id

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}