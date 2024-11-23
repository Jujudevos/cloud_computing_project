variable "subscription_id"{
    description="l'identifiant d'abonnement de l'utilisateur afin de se connecter à Azure"
    type = string
    sensitive = true
}
#variables nécessaires à la création du groupe de ressource
variable "group_name"{
    description = "nom du groupe de ressources"
    type = string
}

variable "location"{
    description = "localisation du groupe de ressources"
    type = string
    default = "France Central"
}

#variables du réseau virtuel
variable "network_name"{
    description = "nom du réseau virtuel"
    type = string
}
variable "address_space"{
    description = "Adresse IP autorisées dans notre réseau virtuel"
    type = list(string)
    default = [ "10.0.0.0/16" ]
}
variable "subnet_name"{
    description = "nom du sous réseau"
    type = string
}
variable "subnet_address"{
    description = "adresses du sous réseau"
    type = list(string)
    default = [ "10.0.1.0/24" ]
}

#variables pour relier la base de données au réseau virtuel
variable "dns_name" {
  description = "nom du dns"
  type = string
}
variable "name_dns_link" {
  description = "nom du lien dns"
  type = string
}

#variables pour le serveur flexible et la base de données
variable "administrator_login"{
    description = "identifiant pour accéder à la base de données"
    type = string
    sensitive = true
}
variable "administrator_password"{
    description = "mot de passe pour accéder à la base de données"
    type = string
    sensitive = true
} 
variable "data_name" {
  description = "nom de la base de données"
  type = string
}
#variables du blob storage
variable "container_name" {
  description = "nom du conteneur de stockage"
  type = string
}