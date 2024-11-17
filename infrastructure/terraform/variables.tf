#variables nécessaires à la création des éléments du projet
variable "group_name"{
    description = "nom du groupe de ressources"
    type = string
}

variable "location"{
    description = "localisation du groupe de ressources"
    type = string
}

variable "subscription_id"{
    description="l'identifiant d'abonnement de l'utilisateur afin de se connecter à Azure"
    type = string
}

#variables necessary for the database

variable "name"{
    description = "nom de la base de données"
    type = string
}
variable "data_ressource_group_name"{
    description = "nom du groupe de ressource auquel est rattaché la base de données"
    type = string    
}
variable "data_location"{
    description = "localisation de la base de données"
    type = string
}
variable "server_name"{
    description = "nom du serveur permettant d'accéder à la base de données"
    type = string
}
variable "storage_mb"{
    description = "taille de la base de données"
    type = number
}
variable "public_network_access_enabled"{
    description = "indique si la base de données est accesible publiquement"
    type = bool
}
variable "administrator_login"{
    description = "identifiant pour accéder à la base de données"
    type = string
}
variable "administrator_password"{
    description = "mot de passe pour accéder à la base de données"
    type = string
} 
variable "sku_name" {
  description = "nom sku de la base de données"
  type = string
} 

variable "version_sql" {
  description = "version du serveur postgres sql"
  type = number
}
#variables du réseau virtuel

#contient les variables nécessaires au réseau virtuel

variable "network_name"{
    description = "nom du réseau virtuel"
    type = string
}
variable "virtual_network_location"{
    description = "localisation du réseau virtuel"
    type = string
}
variable "virtual_group_name"{
    description = "nom du groupe de ressource auquel est rattaché le réseau virtuel"
    type = string
}
variable "address_space"{
    description = "Adresse IP autorisées dans notre réseau virtuel"
    type = list(string)
}
variable "subnet_name"{
    description = "nom du sous réseau"
    type = string
}
variable "subnet_adress"{
    description = "adresses du sous réseau"
    type = list(string)
}