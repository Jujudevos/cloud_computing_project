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



#Output of the blob storage

/*output "url" {
  description = "url du blob storage"
  value = module.blob_storage.url
}*/