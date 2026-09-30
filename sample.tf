# 1. Configure the Azure Provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0" # Keeps you on the stable 4.x release line
    }
  }
}

provider "azurerm" {
  features {} # This block is required for the azurerm provider to function
}

# 2. Create the Azure Resource Group
resource "azurerm_resource_group" "my_rg" {
  name     = "rg-prod-myproject"  # Name of your resource group in Azure
  location = "East US"             # The Azure region where it will be hosted

  tags = {
    Environment = "Production"
    ManagedBy   = "Terraform"
  }
}
