variable "subscription_id" {
  type        = string
  description = "The subscription ID to be scanned"
  default     = null
}

variable "location" {
  type    = string
  default = "West Europe"
}

variable "environment" {
  default     = "dev"
  description = "Must be all lowercase letters or numbers"
}

variable "resource_group_name" {
  default     = "dangora-terragoat-rg"
  description = "Must be all lowercase letters or numbers"
}