



resource "azurerm_virtual_network" "titu_Vnet1" {
    name = var.virtual_network_name
    location = var.location
    resource_group_name = var.resource_group_name
    address_space = var.address_space
  
}