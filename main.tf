provider "azurerm" {
  features {}
  subscription_id= var.subscription_id
}

module "ressource_group" {
  source       = "../modules/ressource_group"
  ressource_group_name = var.group_name
  location = var.location
}