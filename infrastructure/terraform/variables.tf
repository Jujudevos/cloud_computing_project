variable "subscription_id"{
    description="l'identifiant d'abonnement de l'utilisateur afin de se connecter à Azure"
    type = string
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
#variables necessary for the database

/*variable "name"{
    description = "nom de la base de données"
    type = string
}

variable "data_location"{
    description = "localisation de la base de données"
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
}*/


#variables du blob storage


/*variable "storage_group_name" {
  description = "nom du groupe de ressources auquel est rattaché le compte de stockage"
  type = string
}
variable "storage_location" {
  description = "localisation du compte de stockage"
  type = string
}
variable "container_name" {
  description = "nom du conteneur de stockage"
  type = string
}
variable "storage_account_name" {
  description = "nom du compte de stockage"
  type = string
}
variable "blob_name" {
  description = "nom du stockage blob"
  type = string
}
*/