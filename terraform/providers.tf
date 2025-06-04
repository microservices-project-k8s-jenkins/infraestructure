terraform {
  backend "azurerm" {
    resource_group_name  = "my-tfstate-yus-rg"
    storage_account_name = "mytfstateaccountyus"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}