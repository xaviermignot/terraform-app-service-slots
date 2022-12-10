output "app_full_name" {
  value = azurerm_linux_web_app.app.name
}

output "active_app" {
  value = var.active_app
}
