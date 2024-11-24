variable "service_plan_name" {
  description = "nom du plan de service"
  type = string
}
variable "group_name" {
  description = "nom du groupe de ressources"
  type = string
}
variable "location" {
  description = "localisation"
  type = string
}
variable "web_app_name" {
  description = "nom de l'app web"
  type = string
}
variable "subnet_id" {
  description = "identifiant du sous réseau"
  type = string
}
variable "docker_url" {
  description = "url du conteneur docker"
  type = string
}
variable "docker_image_name" {
  description = "nom de l'image docker"
  type = string
}
variable "docker_username" {
  description = "identifiant pour accéder au docker"
  type = string
}
variable "docker_password" {
  description = "mot de passe pour accéder au docker"
  type = string
}
variable "postgres_host" {
  description = "serveur de la base de données"
  type        = string
}

variable "postgres_port" {
  description = "port de la base de données"
  type        = string
}

variable "postgres_name" {
  description = "nom de la base de données"
  type        = string
}

variable "administrator_login" {
  description = "identifiant de la base de données"
  type        = string
  sensitive = true
}

variable "administrator_password" {
  description = "mot de passe de la base de données"
  type        = string
  sensitive   = true
}
variable "storage_url" {
  description = "url du compte de stockage"
  type = string
}
variable "storage_id" {
  description = "identifiant du compte de stockage"
  type = string
}