

# Resource group to provision the resources
resource "azurerm_resource_group" "plrg" {
  name     = var.rgname
  location = "West Europe"
  tags = {
    Environment = "Production"
  }
}


# Azure container registry to build and push the docker image of the sample application
resource "azurerm_container_registry" "peerislandacr" {
  name                = var.peerislandacr
  resource_group_name = azurerm_resource_group.plrg.name
  location            = azurerm_resource_group.plrg.location
  sku                 = "Premium"
  admin_enabled       = false
  tags = {
    Environment = "Production"
  }
  
}