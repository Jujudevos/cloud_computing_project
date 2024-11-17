output "group_name" {
  description = "Nom du groupe de ressources"
  value       = azurerm_resource_group.project.group_name
}

output "location" {
  description = "Localisation du groupe de ressources"
  value       = azurerm_resource_group.project.location
}
