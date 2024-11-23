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
/*module "postgres" {
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


}*/


#blob storage

/*module "blob_storage" {
  source = "./modules/blob_storage"

  blob_name = var.blob_name
  location = module.ressource_group.location
  container_name = var.container_name
  group_name = module.ressource_group.group_name
  storage_account_name =var.storage_account_name
}*/