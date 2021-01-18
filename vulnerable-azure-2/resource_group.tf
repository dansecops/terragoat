resource "azurerm_resource_group" "vbdgroup" {
  name     = "vuln-${var.environment}"
  location = var.location
}