resource "azurerm_mssql_server" "sql" {
  for_each = var.sql_servers

  name                         = each.value.name
  location                     = each.value.location
  resource_group_name          = each.value.resource_group_name
  version                      = "12.0"
  administrator_login          = each.value.admin_login
  administrator_login_password = each.value.admin_password
}

resource "azurerm_mssql_database" "sql" {
  for_each = var.databases

  name      = each.value.name
  server_id = azurerm_mssql_server.sql[each.value.server_key].id
}
