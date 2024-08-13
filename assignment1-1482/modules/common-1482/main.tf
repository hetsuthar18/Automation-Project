resource "azurerm_log_analytics_workspace" "log_analytics" {
  name                = "loganalytics1482"
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags = var.tags

}

resource "azurerm_recovery_services_vault" "recovery_vault" {
  name                = "rv1482"
  location            = var.location
  resource_group_name = var.rg_name
  sku = "Standard"
  tags = var.tags
}

resource "azurerm_storage_account" "storage" {
  name                     = "storage1482"
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = var.tags
}
