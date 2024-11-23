provider "azurerm" {
  features {}
  subscription_id= var.subscription_id
}

module "ressource_group" {
  source       = "./modules/ressource_group"
  group_name = var.group_name
  location = var.location
}

module "virtual_network"{
  source = "./modules/virtual_network"
  network_name = var.network_name
  address_space = var.address_space
  location            = module.ressource_group.location
  group_name = module.ressource_group.group_name
  subnet_name         = var.subnet_name
  subnet_address = var.subnet_address
}

module "postgres" {
  source = "./modules/postgres"
  dns_name = var.dns_name
  group_name = module.ressource_group.group_name
  name_dns_link = var.name_dns_link
  location = module.ressource_group.location
  subnet_id = module.virtual_network.subnet_id
  administrator_login = var.administrator_login
  administrator_password = var.administrator_password
  data_name = var.data_name
  virtual_network_id = module.virtual_network.vnet_id
}
#blob storage

module "blob_storage" {
  source = "./modules/blob_storage"

  location = module.ressource_group.location
  container_name = var.container_name
  group_name = module.ressource_group.group_name
}