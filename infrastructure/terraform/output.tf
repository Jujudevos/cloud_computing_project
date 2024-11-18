#variables necessary for the ressource group

output "group_name" {
  description = "Nom du groupe de ressources"
  value       = module.ressource_group.group_name
}

output "location" {
  description = "Localisation du groupe de ressources"
  value       = module.ressource_group.location
}

#variables necessary to create the database

/*output "name" {
  description = "Nom de la base de données"
  value       = module.postgres.name
}


output "data_location" {
  description = "Localisation de la base de données"
  value       = module.postgres.location
}

output "data_ressource_group_name"{
    description = "nom du groupe de ressources auquel la base de données est rattaché"
    value = module.postgres.ressource_group_name
}

output "storage_mb"{
    description = "taille de la base de données"
    value = module.postgres.storage_mb
}

output "public_network_access_enabled"{
    description = "indique si la base de données est accesible publiquement"
    value = module.postgres.public_network_access_enabled
}*/

output "vnet_id" {
  description = "ID du réseau virtuel"
  value       = module.virtual_network.vnet_id
}

output "subnet_id" {
  description = "ID du sous réseau"
  value       = module.virtual_network.subnet_id
}