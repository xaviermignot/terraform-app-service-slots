variable "location" {
  type        = string
  description = "the location to use for all resources"
}

variable "project" {
  type        = string
  description = "the project name to use in all resource names"
}

variable "rg_name" {
  type        = string
  description = "the name of the resource group containing all the resources"
}

variable "plan_id" {
  type        = string
  description = "the id of the App Service to use"
}

variable "app_name" {
  type        = string
  description = "the name of the app to use in the App Service name"
}

variable "active_app" {
  type    = string
  default = "blue"
  validation {
    condition     = var.active_app == "blue" || var.active_app == "green"
    error_message = "The active_app value must be either 'blue' or 'green'."
  }
}

variable "blue_app_settings" {
  type    = map(string)
  default = null
}

variable "green_app_settings" {
  type    = map(string)
  default = null
}

