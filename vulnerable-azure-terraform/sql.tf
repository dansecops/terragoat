resource "azurerm_sql_firewall_rule" "sqlfw" {
  name                = "firewall-rule-${var.environment}"
  resource_group_name = azurerm_resource_group.vbdgroup.name
  server_name         = azurerm_sql_server.sqlsrv.name
  start_ip_address    = "10.0.17.62"
  end_ip_address      = "10.0.17.62"
}

resource "azurerm_sql_server" "sqlsrv" {
  name                         = "sqlserver-${var.environment}${random_integer.rnd_int.result}"
  resource_group_name          = azurerm_resource_group.vbdgroup.name
  location                     = azurerm_resource_group.vbdgroup.location
  version                      = "12.0"
  administrator_login          = "sqladmin"
  administrator_login_password = random_string.password.result
  tags = {
    environment = var.environment
    vuln  = true
  }
}

resource "azurerm_postgresql_server" "pgresrv" {
  name                         = "postgresql-${var.environment}${random_integer.rnd_int.result}"
  location                     = azurerm_resource_group.vbdgroup.location
  resource_group_name          = azurerm_resource_group.vbdgroup.name
  sku_name                     = "GP_Gen5_2"
  storage_mb                   = 5120
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true
  administrator_login          = "sqladmin"
  administrator_login_password = "h1L!^#qi*Y$2"
  version                      = "9.5"
  ssl_enforcement_enabled      = false
}

resource "azurerm_postgresql_configuration" "thrtottling_config" {
  name                = "connection_throttling"
  resource_group_name = azurerm_resource_group.vbdgroup.name
  server_name         = azurerm_postgresql_server.pgresrv.name
  value               = "off"
}

resource "azurerm_postgresql_configuration" "pgresconfig" {
  name                = "log_checkpoints"
  resource_group_name = azurerm_resource_group.vbdgroup.name
  server_name         = azurerm_postgresql_server.pgresrv.name
  value               = "off"
}