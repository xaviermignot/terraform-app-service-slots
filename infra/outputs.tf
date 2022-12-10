output "app_service_name" {
  value = module.app_service.app_full_name
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "active_app" {
  value = module.app_service.active_app
}
