# Azure Resource Group Name
variable "rg_name" {
  type = string
  default = "app1-rg"
}
# Azure Resources Location
variable "rg_location" {
  type = string
  default = "westus"
}

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
        rg_name = var.rg_name
        rg_location = var.rg_location
}
