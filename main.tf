provider "azurerm" {
  features {}
}

output "broken" {
  value = local.missing_value
}

locals {
  missing_value = var.values + 1
}

variable "values" {
  type = number
  default = 1
}