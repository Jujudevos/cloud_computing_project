#variables nécessaires à la création du groupe de ressources
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
