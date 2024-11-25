output "app_service_link" {
  description = "lien de l'app service"
  value = azurerm_linux_web_app.project.default_hostname
}