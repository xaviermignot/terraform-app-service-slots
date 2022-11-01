resource "azurerm_service_plan" "plan" {
  name                = "asp-${var.project}"
  location            = var.location
  resource_group_name = var.rg_name

  os_type  = "Linux"
  sku_name = "S1"
}
