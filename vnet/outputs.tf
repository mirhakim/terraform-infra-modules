output "vnet_id" {
  value = azurerm_virtual_network.vnetwork.id
}

output "subnet_id" {
  value = azurerm_subnet.subnet1.id
}
