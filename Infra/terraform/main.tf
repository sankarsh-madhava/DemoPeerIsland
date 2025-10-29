# terraform backend config block to define the provider details
terraform {
  backend "azurerm" {
    
  }
  required_providers {
    azurerm = {
        source = "azurerm"
        version = "4.8.0"
    }
    kubernetes = {
        source = "hashicorp/kubernetes"
        version = ">=2.33.0"
    }
    helm = {
        source = "hashicorp/helm"
        version = ">=2.16"
    }
  }
}


provider "azurerm" {
  features{}
  required_provider_registrations = "none"
}

provider "kubernetes" {
    config_path = "~/.kube/config"
    config_context = "akscontext"
}

provider "helm" {
  kubernetes = {
    config_path = "~/.kube/config"
  }
}

