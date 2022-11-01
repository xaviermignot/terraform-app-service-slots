resource "azurerm_linux_web_app" "app" {
  name                = "app-${var.project}-${var.app_name}"
  location            = var.location
  resource_group_name = var.rg_name
  service_plan_id     = var.plan_id

  site_config {
    application_stack {
      dotnet_version = "6.0"
    }
  }
}
