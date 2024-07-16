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
module "app1-vnet" {
        source = "git@github.com:subbuj1210/Practice-Devops.git"
        rg_name = "app1-rg3"
        rg_location = "westus"
        vnet_name = "app1-vnet"
        vnet_cidr = ["192.168.0.0/16"]
        web_subnet_name = "websubnet"
        web_subnet_address = ["192.168.0.0/24"]
}

