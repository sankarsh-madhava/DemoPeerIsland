# Azure virtual network and subnet in which AKS will be created
resource "azurerm_virtual_network" "plvnet" {
  name                = "pl-vnetwork"
  location            = azurerm_resource_group.plrg.location
  resource_group_name = azurerm_resource_group.plrg.name
  address_space       = ["10.0.0.0/16"]
  tags = {
    Environment = "Production"
  }
}
  resource "azurerm_subnet" "plsubnet" {
  name                 = "plsubnet"
  resource_group_name  = azurerm_resource_group.plrg.name
  virtual_network_name = azurerm_virtual_network.plrg.name
  address_prefixes     = ["10.0.1.0/24"]

  tags = {
    Environment = "Production"
  }
}