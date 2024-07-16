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
}
module "app1-subnet" {
        source = "github.com/subbuj1210/Azure-Devops/modules/Vnet"
        web_subnet_name = "websubnet"
        rg_name = "app1-rg3"
        rg_location = "westus"
        vnet_cidr = ["192.168.0.0/16"]
        vnet_name = "app1-vnet"
        web_subnet_address = ["192.168.0.0/24"]

}


