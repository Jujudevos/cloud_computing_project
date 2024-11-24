output "url" {
  description = "url du blob storage"
  value = azurerm_storage_blob.project.url
}
output "storage_id" {
  description = "identifiant du compte de stockage"
  value = azurerm_storage_account.project.id
}