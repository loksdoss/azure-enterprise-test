# Terraform Backend Configuration
# Stores Terraform state in Azure Storage

terraform {

  backend "azurerm" {

    resource_group_name  = "tfstate-rg"

    # Resource Group containing storage account

    storage_account_name = "tfstateazure112"

    # Storage account storing terraform state

    container_name       = "tfstate"

    # Blob container name

    key                  = "dev.terraform.tfstate"

    # State file name

  }

}