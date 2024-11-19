#contient les variables nécessaires au réseau virtuel

variable "network_name"{
    description = "nom du réseau virtuel"
    type = string
}
variable "location"{
    description = "localisation du réseau virtuel"
    type = string
}
variable "group_name"{
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
variable "subnet_address"{
    description = "adresses du sous réseau"
    type = list(string)
}
