data "azurerm_key_vault" "kv" {
  name                = "todo0013-kv"
  resource_group_name = "todo-app-0013"
}

data "azurerm_key_vault_secret" "admin_username" {
  name         = "sql-ServerUsername"
  key_vault_id = data.azurerm_key_vault.kv.id
}


data "azurerm_key_vault_secret" "admin_password" {
  name         = "sql-ServerPassword"
  key_vault_id = data.azurerm_key_vault.kv.id
}




resource "azurerm_mssql_server" "example" {
  name                         = var.mssql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = data.azurerm_key_vault_secret.admin_username.value
  administrator_login_password = data.azurerm_key_vault_secret.admin_password.value
  minimum_tls_version          = "1.2"

 
}