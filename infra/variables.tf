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
