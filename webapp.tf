resource "azurerm_service_plan" "devops_app_plan" {
  name                = "devops-app-plan"
  resource_group_name = azurerm_resource_group.devops_grp.name
  location            = azurerm_resource_group.devops_grp.location
  os_type             = "Linux"
  sku_name            = "F1"
  tags = {
    "Environment" = "test"
  }
}

resource "azurerm_linux_web_app" "devops_app" {
  name                = "devops-app"
  resource_group_name = azurerm_resource_group.devops_grp.name
  location            = azurerm_service_plan.devops_app_plan.location
  service_plan_id     = azurerm_service_plan.devops_app_plan.id

  site_config {
    always_on = false
    application_stack {
      php_version = "8.0"
    }
  }
}