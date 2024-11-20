#variables pour relier la base de données au réseau virtuel
variable "dns_name" {
  description = "nom du dns"
  type = string
}
variable "name_dns_link" {
  description = "nom du lien dns"
  type = string
}
variable "virtual_network_id" {
  description = "identifiant du réseau virtuel"
  type = string
}

#variables pour le serveur flexible et la base de données
variable "flexible_server_name"{
    description = "nom de la base de données"
    type = string
}
variable "group_name"{
    description = "nom du groupe de ressources auquel est rattaché la base de données"
    type = string
}
variable "location"{
    description = "localisation de la base de données"
    type = string
}
variable "subnet_id" {
  description = "identifiant du réseau virtuel"
  type = string
}
variable "administrator_login"{
    description = "identifiant pour accéder à la base de données"
    type = string
}
variable "administrator_password"{
    description = "mot de passe pour accéder à la base de données"
    type = string
} 
variable "data_name" {
  description = "nom de la base de données"
  type = string
}
