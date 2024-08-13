resource "azurerm_postgresql_server" "db" {
  name                = "pgsql1482"
  location            = var.location
  resource_group_name = var.rg_name
  sku_name     = "B_Gen5_1"
  storage_mb            = 5120
  backup_retention_days = 7
  administrator_login          = "N01651482"
  administrator_login_password =  var.admin_password
  version                      = "11"
  ssl_enforcement_enabled      = true
  public_network_access_enabled = true
  
}

resource "azurerm_postgresql_database" "db" {
  name = "psql_db_1482"
  resource_group_name = var.rg_name
  server_name = azurerm_postgresql_server.db.name
  charset = "UTF8"
  collation           = "English_United States.1252"
  
}