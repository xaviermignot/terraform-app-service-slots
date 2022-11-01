resource "azurerm_linux_web_app_slot" "staging" {
  name           = "staging"
  app_service_id = azurerm_linux_web_app.app.id

  site_config {
    application_stack {
      dotnet_version = "6.0"
    }
  }
}
