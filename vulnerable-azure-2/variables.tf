variable "subscription_id" {
  type        = string
  default     = null
}

variable "location" {
  type    = string
  default = "UK South"
}

variable "environment" {
  default     = "test"
  description = "Must be all lowercase letters or numbers"
}