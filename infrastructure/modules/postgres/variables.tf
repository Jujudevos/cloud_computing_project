#variables necessary for the database

variable "name"{
    description = "nom de la base de données"
    type = string
}
variable "server_name"{
    description = "nom du serveur permettant d'accéder à la base de données"
    type = string
}
variable "ressource_group_name"{
    description = "nom du groupe de ressources auquel est rattaché la base de données
    type = string
}
variable "location"{
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
    description = mot de passe pour accéder à la base de données"
    type = string
} 