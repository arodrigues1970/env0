terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.75.0"
    }
  }
  required_version = "=1.0.6"
}

provider "azurerm" {
  subscription_id = "subscription_id"
  features {}
}

provider "azurerm" {
  alias           = "hub"
  subscription_id = "subscription_id"
  features {}
}
