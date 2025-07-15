terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "1.38.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
}
resource "azurerm_resource_group" "example" {
  name     = "testResourceGroup1"
  location = "West US"
}
resource "azurerm_storage_account" "example" {}