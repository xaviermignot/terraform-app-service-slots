resource "azurerm_linux_web_app" "app" {
  name                = "app-${var.project}-${var.app_name}"
  location            = var.location
  resource_group_name = var.rg_name
  service_plan_id     = var.plan_id

  app_settings = var.active_app == "blue" ? var.blue_app_settings : var.green_app_settings

  sticky_settings {
    app_setting_names = ["IsStaging"]
  }

  site_config {
    application_stack {
      dotnet_version = "6.0"
    }
  }
}
