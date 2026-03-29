# Variable Definition
# These values can change between environments (dev/qa/prod)

variable "location" {
  description = "Azure region where resources will be created"
  default     = "East US"
}

variable "environment" {
  description = "Environment name"
  default     = "test"
}