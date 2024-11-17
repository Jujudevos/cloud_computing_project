provider "azurerm" {
  features {}
  subscription_id= var.subscription_id
}

module "ressource_group" {
  source       = "./modules/ressource_group"
  group_name = var.group_name
  location = var.location
}

module "postgres" {
  source = "./modules/postgres"
  name = var.name
  group_name = module.ressource_group.group_name
  sku_name = var.sku_name
  location = module.ressource_group.location
  storage_mb = var.storage_mb
  public_network_access_enabled = var.public_network_access_enabled
  administrator_login = var.administrator_login
  administrator_password = var.administrator_password
  version_sql = var.version_sql


}

module "virtual_network" {
  source              = "./modules/virtual_network"
  virtual_network_name = var.virtual_network_name
  address_space       = var.virtual_network.address_space
  location            = var.virtual_network.virtual_network_location
  resource_group_name = var.virtual_network.virtual_network_ressource_group_name
  subnet_name         = var.virtual_network.subnet_name
  subnet_adress = var.virtual_network.subnet_adress
}