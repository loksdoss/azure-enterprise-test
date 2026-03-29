# Terraform Resource Type
# azurerm_resource_group = Azure Resource Group

resource "azurerm_resource_group" "rg" {

  # Terraform Logical Name
  # "rg" is used inside Terraform references
  # Example: azurerm_resource_group.rg.name

  name = "new-rg-test"

  # Azure Resource Name
  # This is the actual name visible in Azure Portal

  location = var.location

}

# Purpose
# Resource Group is a container for all resources