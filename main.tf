terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "myResourceGroup"
    storage_account_name = "narottamstorageacct12346"
    container_name       = "mycontainer"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  #subscription_id is not required if you are logged in via the Azure CLI and version is 3.0 or higher
}
resource "azurerm_resource_group" "rg" {
  name     = "my-rg"
  location = "West Europe"
}