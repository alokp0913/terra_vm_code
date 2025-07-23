

data "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.resource_group_name
}


data "azurerm_public_ip" "pip" {
  name                = var.public_ip_name
  resource_group_name = var.resource_group_name
}


data "azurerm_key_vault" "kv" {
  name                = "todo0013-kv"
  resource_group_name = "todo-app-0013"
}

data "azurerm_key_vault_secret" "vm-UserName" {
  name         = var.vm_username
  key_vault_id = data.azurerm_key_vault.kv.id
}


data "azurerm_key_vault_secret" "vm_password" {
  name         = var.vm_password
  key_vault_id = data.azurerm_key_vault.kv.id
}
