resource "azurerm_lb" "lb" {
  name                = "lb1482"
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = "Basic"
  tags = var.tags
  
  }
  
  


