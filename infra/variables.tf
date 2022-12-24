variable "location" {
  type        = string
  default     = "canadaeast"
  description = "the location to use for all resources"
}

variable "project" {
  type        = string
  default     = "aps-slots-demo"
  description = "the project name to use in all resource names"
}

variable "active_app" {
  type    = string
  default = "blue"
  validation {
    condition     = var.active_app == "blue" || var.active_app == "green"
    error_message = "The active_app value must be either 'blue' or 'green' (defaults to 'blue')."
  }
}
