provider "azurerm" {
  features {}
}

output "broken" {
  value = local.missing_value
}

locals {
  missing_value = var.values + "abc"
}

variable "values" {
  type = number
  default = 1
}