terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.4.0"
    }
  }
  required_version = "=1.9.0"
}

provider "azurerm" {
  features {
    subscription_id = var.subscription_id
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}