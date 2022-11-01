resource "azurerm_web_app_active_slot" "active_slot" {
  count = var.active_app == "green" ? 1 : 0

  slot_id = azurerm_linux_web_app_slot.staging.id
}
