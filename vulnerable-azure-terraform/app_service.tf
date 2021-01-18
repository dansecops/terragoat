resource azurerm_app_service_plan "appplan" {
  name                = "app-service-plan-${var.environment}"
  location            = azurerm_resource_group.vbdgroup.location
  resource_group_name = azurerm_resource_group.vbdgroup.name

  sku {
    tier = "Dynamic"
    size = "S1"
  }
}

resource azurerm_app_service "app-service1" {
  app_service_plan_id = azurerm_app_service_plan.appplan.id
  location            = var.location
  name                = "dg-app-service-${var.environment}${random_integer.rnd_int.result}"
  resource_group_name = azurerm_resource_group.vbdgroup.name
  https_only          = false
  site_config {
    min_tls_version = "1.1"
  }
}

resource azurerm_app_service "app-service2" {
  app_service_plan_id = azurerm_app_service_plan.appplan.id
  location            = var.location
  name                = "dg-app-service-${var.environment}${random_integer.rnd_int.result}"
  resource_group_name = azurerm_resource_group.vbdgroup.name
  https_only          = true

  auth_settings {
    enabled = false
  }
}

