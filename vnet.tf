# Terraform Resource Type
# azurerm_virtual_network = Azure Virtual Network

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-test"  # Azure VNet Name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name  # Associates VNet with the Resource Group
  address_space       = ["10.0.0.0/16"]  # Network IP range
}

# Purpose
# Creates a private network inside Azure cloud

# Terraform Resource Type
# azurerm_subnet = Azure subnet

resource "azurerm_subnet" "subnet" {

  depends_on = [
    azurerm_virtual_network.vnet
  ]

  name                 = "subnet-test"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name

  address_prefixes = ["10.0.1.0/24"]
}

