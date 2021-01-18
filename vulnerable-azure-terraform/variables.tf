variable "subscription_id" {
  type        = string
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