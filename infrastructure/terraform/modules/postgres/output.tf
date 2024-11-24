output "postgres_host" {
  description = "server pour accéder à la base de données"
  value = azurerm_postgresql_flexible_server.project.fqdn
}
output "posgres_port" {
  description = "port pour accéder à la base de données"
  value = 5432
}
output "postgres_name" {
  description = "nom de la base de données"
  value = azurerm_postgresql_flexible_server.project.name
}
output "administrator_login" {
  description = "identifiant pour accéder à la base de données"
  value = azurerm_postgresql_flexible_server.project.administrator_login
  sensitive = true
}
output "administrator_password" {
  description = "mot de passe de la base de données"
  value = azurerm_postgresql_flexible_server.project.administrator_password
  sensitive = true
}