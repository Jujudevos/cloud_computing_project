output "vnet_id" {
  description = "ID du réseau virtuel"
  value       = azurerm_virtual_network.virtual_network.id
}

output "subnet_id" {
  description = "ID du sous réseau"
  value       = azurerm_subnet.subnet.id
}