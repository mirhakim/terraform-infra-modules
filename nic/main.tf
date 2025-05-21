resource "azurerm_network_interface" "nic1" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags

  ip_configuration {
    name                          = var.ip_config_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_allocation
    public_ip_address_id          = var.public_ip_id
  }
}
