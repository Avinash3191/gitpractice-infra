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
resource "azurerm_virtual_network" "example" {
    name = "myvnet"
    resource_group_name = "testResourceGroup1"
    address_space = [  ]
}
resource "azurerm_storage_account" "example" {
    name = "avistorage123"
    location = "westus"
    resource_group_name = "testResourceGroup1"
    account_tier = "Standard"
}
resource "azurerm_storage_account" "example" {
  name                     = "teststorageaccount1"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

