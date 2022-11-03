terraform {
  cloud {
    organization = "mitric"

    workspaces {
      name = "azure-devops-course"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.20.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  subscription_id = "717f701d-a8d2-4255-ab08-d943cc8e8914"
  tenant_id       = "d636ffa4-84d6-41b6-820d-f3003fb3707b"
  client_id       = "64288a99-172a-46da-85cc-596f5e91a90f"
  client_secret   = "Ngm8Q~ASt9FIeC2FP6AT1z3wbLNLzmwyXo0Onal7"
  features {}
}