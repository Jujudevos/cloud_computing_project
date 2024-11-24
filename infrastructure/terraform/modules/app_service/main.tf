resource "azurerm_service_plan" "project" {
  name                = var.service_plan_name
  resource_group_name = var.group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "project" {
  name                = var.web_app_name
  resource_group_name = var.group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.project.id
  public_network_access_enabled = true
  virtual_network_subnet_id     = var.subnet_id

  site_config {
    application_stack {
      docker_registry_url      = var.docker_url
      docker_image_name        = var.docker_image_name
      docker_registry_username = var.docker_username
      docker_registry_password = var.docker_password
    }
  }
  app_settings = {
    #database variable
     # Database environment variables
    DATABASE_HOST     = var.postgres_host
    DATABASE_PORT     = var.postgres_port
    DATABASE_NAME     = var.postgres_name
    DATABASE_USER     = var.administrator_login
    DATABASE_PASSWORD = var.administrator_password
    # Storage environment variables
    STORAGE_ACCOUNT_URL = var.storage_url
  }
  identity {
    type = "SystemAssigned"
  }
  
}
# Grant the app service access to the storage account
resource "azurerm_role_assignment" "app_service_storage_access" {
  principal_id         = azurerm_linux_web_app.project.identity[0].principal_id
  role_definition_name = "Storage Blob Data Contributor"
  scope                = var.storage_id
}