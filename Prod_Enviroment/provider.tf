terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.33.0"
    }
  }
}

provider "azurerm" {
  features {} 
  subscription_id = "5e1a4ed3-e4dc-4f98-88ec-6e69c7cf0255"
}



