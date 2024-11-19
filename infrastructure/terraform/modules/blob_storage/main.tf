resource "azurerm_storage_account" "project"{
    name = var.storage_account_name
    resource_group_name = var.group_name
    location = var.location
    account_tier =  "Standard"
    account_replication_type = "LRS"
}

resource "azurerm_storage_container" "project" {
  name = var.container_name
  storage_account_name = azurerm_storage_account.project.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "project" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.project.name
  storage_container_name = azurerm_storage_container.project.name
  type                   = "Block"
}