terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.98.0"
    }
  }
}

provider "azurerm" {
  features {}


}
resource "azurerm_resource_group" "thepreetrs" {
  name     = "api-rg-pro"
  location = "West Europe"
}

resource "azurerm_app_service_plan" "thepreetrs" {
  name                = "api-appserviceplan-pro"
  location            = azurerm_resource_group.thepreetrs.location
  resource_group_name = azurerm_resource_group.thepreetrs.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}