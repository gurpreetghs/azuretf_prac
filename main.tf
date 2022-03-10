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
resource "azurerm_resource_group" "preetrg" {
  name     = "mypreetrg"
  location = "central india"
}

resource "azurerm_app_service_plan" "myappsrvc" {
  name                = "my_tf_aspl"
  resource_group_name = azurerm_app_service_plan.myappsrvc.name
  location            = azurerm_app_service_plan.myappsrvc.location
  sku {
    tier = "Standard"
    size = "S1s"
  }
}
