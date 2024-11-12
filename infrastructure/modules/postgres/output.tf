output "name" {
  description = "Nom de la base de données"
  value       = var.group_name
}

output "server_name"{
    description="nom du serveur sur lequel la base de données est accesible"
    value=var.server_name
}

output "location" {
  description = "Localisation de la base de données"
  value       = var.location
}

output "ressource_group_name"{
    description = "nom du groupe de ressources auquel la base de données est rattaché"
    value = var.ressource_group_name
}

output "storage_mb"{
    description = "taille de la base de données"
    value = var.storage_mb
}

output "public_network_access_enabled"{
    description = "indique si la base de données est accesible publiquement"
    value = var.public_network_access_enabled
}