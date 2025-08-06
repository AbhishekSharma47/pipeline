terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "backend"
    storage_account_name = "abackend"
    container_name       = "backend"
    key                  = "bknd.tfstate"
    subscription_id      = "661ea49e-05d4-429e-8204-de0d46c539b5"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "661ea49e-05d4-429e-8204-de0d46c539b5"
}
