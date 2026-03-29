# Terraform Resource Type
# azurerm_key_vault = Azure Key Vault


resource "azurerm_key_vault" "kv" {
  name                = "kvtest${random_string.unique.result}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  tenant_id = "9f03d683-b0d3-4252-9e67-dc9feb99361b"
  # Azure tenant

  sku_name = "standard"

}

# Purpose
# Stores secrets like passwords, certificates and API keys