locals {
  slot_app_settings = var.active_app == "blue" ? var.green_app_settings : var.blue_app_settings
}

resource "azurerm_linux_web_app_slot" "staging" {
  name           = "staging"
  app_service_id = azurerm_linux_web_app.app.id

  app_settings = merge(local.slot_app_settings, { IsStaging = true })

  site_config {
    application_stack {
      dotnet_version = "6.0"
    }
  }
}
