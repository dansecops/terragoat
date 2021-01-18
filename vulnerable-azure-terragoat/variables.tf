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
  default     = "sandbox"
  description = "Must be all lowercase letters or numbers"
}

variable "resource_group_name" {
  default     = "dg-terragoat-rg"
  description = "Must be all lowercase letters or numbers"
}