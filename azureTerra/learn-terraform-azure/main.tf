# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.7.0"
    }
  }
}

provider "azurerm" {
  features {}
  #include the next line of code. Terraform utomatically attempts to register the Azure Resource Providers it supports, to ensure it is able to provision resources.
  resource_provider_registrations = "none"
  subscription_id                 = "c1c75639-d665-4197-96df-615496f5a798"
  #tenant_id       = "38e16bae-0922-4ce7-a4eb-9f1aab49bcc2"
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "South Africa North"
}

