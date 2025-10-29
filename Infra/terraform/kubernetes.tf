
# Azure kubernetes cluster service to deploy the sample application
resource "azurerm_kubernetes_cluster" "plkubecluster" {
  name                = "pl-aks-cluster"
  location            = azurerm_resource_group.plrg.location
  resource_group_name = azurerm_resource_group.plrg.name
  dns_prefix          = "plaks"
  sku_tier            = "Standard"

  default_node_pool {
    name       = "plnodepool"
    node_count = 3
    vm_size    = "Standard_DS2_v2"
    vnet_subnet_id = azurerm_virtual_network.plvnet.vnet_subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}