terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.111.0"
    }
  }
# Terraform State Storage to Azure Storage Container
  backend "azurerm" {
    resource_group_name   = "shoppingclient"
    storage_account_name  = "shoppingclient553"
    container_name        = "akspractice"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
module "app1-rg" {
        source = "git@github.com:subbuj1210/Practice-Devops.git"
        rg_name = "app1-rg3"
        rg_location = "westus"
}
