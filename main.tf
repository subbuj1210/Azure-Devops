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
       source = "github.com/subbuj1210/Azure-Devops/modules/rg"
       rg_name = "app1-rg3"
       rg_location = "westus"
  # Replace with your GitHub personal access token
  # Make sure to use a secure method to manage and store tokens!
  source_credentials = {
    username = "subbuj1210"
    password = "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"
  }
}

