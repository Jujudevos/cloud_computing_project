variable "group_name" {
  description = "nom du groupe de ressources auquel est rattaché le compte de stockage"
  type = string
}
variable "location" {
  description = "localisation du compte de stockage"
  type = string
}
variable "container_name" {
  description = "nom du conteneur de stockage"
  type = string
}
variable "storage_account_name" {
  description = "identifiant du compte de stockage"
  type = string
}
variable "blob_name" {
  description = "nom du stockage blob"
  type = string
}
