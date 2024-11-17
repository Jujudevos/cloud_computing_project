output "name" {
  description = "Nom de la base de données"
  value       = azurerm_postgresql_flexible_server.project.group_name
}

output "server_name"{
    description="nom du serveur sur lequel la base de données est accesible"
    value=azurerm_postgresql_flexible_server.project.server_name
}

output "location" {
  description = "Localisation de la base de données"
  value       = azurerm_postgresql_flexible_server.project.location
}

output "ressource_group_name"{
    description = "nom du groupe de ressources auquel la base de données est rattaché"
    value = azurerm_postgresql_flexible_server.project.ressource_group_name
}

output "storage_mb"{
    description = "taille de la base de données"
    value = azurerm_postgresql_flexible_server.project.storage_mb
}

output "public_network_access_enabled"{
    description = "indique si la base de données est accesible publiquement"
    value = azurerm_postgresql_flexible_server.project.public_network_access_enabled
}