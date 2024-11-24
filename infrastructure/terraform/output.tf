#Output of the resource group

output "group_name" {
  description = "Nom du groupe de ressources"
  value       = module.ressource_group.group_name
}

output "location" {
  description = "Localisation du groupe de ressources"
  value       = module.ressource_group.location
}
#Output du réseau virtuel

output "vnet_id" {
  description = "ID du réseau virtuel"
  value       = module.virtual_network.vnet_id
}

output "subnet_id" {
  description = "ID du sous réseau"
  value       = module.virtual_network.subnet_id
}

#output of the database

output "postgres_host" {
  description = "server pour accéder à la base de données"
  value = module.postgres.fqdn
}
output "posgres_port" {
  description = "port pour accéder à la base de données"
  value = 5432
}
output "postgres_name" {
  description = "nom de la base de données"
  value = module.postgres.name
}
output "administrator_login" {
  description = "identifiant pour accéder à la base de données"
  value = module.postgres.administrator_login
  sensitive = true
}
output "administrator_password" {
  description = "mot de passe de la base de données"
  value = module.postgres.administrator_password
  sensitive = true
}

#Output of the blob storage

output "url" {
  description = "url du blob storage"
  value = module.blob_storage.url
}
output "storage_id" {
  description = "identifiant du compte de stockage"
  value = module.blob_storage.storage_id
}