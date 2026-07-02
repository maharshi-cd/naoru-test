provider "azurerm" {
  features {}
}

output "broken" {
  value = local.missing_value
}

