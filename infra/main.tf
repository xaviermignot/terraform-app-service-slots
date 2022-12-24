resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.project}"
  location = var.location
}

resource "random_pet" "app_name" {}

module "plan" {
  source = "./app_service_plan"

  rg_name  = azurerm_resource_group.rg.name
  location = var.location
  project  = var.project
}

module "app_service" {
  source = "./app_service"

  rg_name  = azurerm_resource_group.rg.name
  location = var.location
  project  = var.project

  plan_id  = module.plan.plan_id
  app_name = random_pet.app_name.id

  active_app = var.active_app

  blue_app_settings = {
    "EnvironmentLabel" = "This is the blue version"
  }

  green_app_settings = {
    EnvironmentLabel = "This is the green version"
  }
}
