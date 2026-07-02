provider "azurerm" {
  features {}
}

output "broken" {
  value = local.missing_value
}

locals {
<<<<<<< HEAD
  missing_value = var.values + 10
=======
  missing_value = var.values + 1
>>>>>>> 8aabd958ee6aa5d014c30ab8c3fa866b9d0f581d
}

variable "values" {
  type    = number
  default = 1
}

resource "azurerm_resource_group" "test-rg" {
  for_each = { for i in var.map-test : i.name => i }
  name     = each.value.name
  location = each.value.location
}

variable "map-test" {
  type = list(object({
    name     = string
    location = string
    env      = string
  }))

  default = [{
    name     = "test-rg"
    location = "eastus"
    env      = "dev"
  }]

}


output "rg-name" {
  value = {for k,  v in azurerm_resource_group.test-rg : k => v.name}
}

output "rg-location" {
  value = {for k,  v in azurerm_resource_group.test-rg : k => v.default}
}