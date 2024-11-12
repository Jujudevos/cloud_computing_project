provider "azurerm" {
  features {}
  subscription_id= var.subscription_id
}

module "ressource_group" {
  source       = "../modules/ressource_group"
  ressource_group_name = var.group_name
  location = var.location
}

module "postgres" {
  source = "../modules/postgres
  name = var.name
  server_name = var.server_name
  resource_group_name = var.resource_group_name
  location = var.location
  storage_mb = var.storage_mb
  public_network_access_enabled = var.public_network_access_enabled
  administrator_login = var.administrator_login
  administrator_password = var.administrator_password


}