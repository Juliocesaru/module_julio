variable "storage_account_name" {
  description = "juliostorage"
}

variable "resource_group_name" {
  description = "MCIT_lab_session"
}

variable "location" {
  description = "canadacentral"
  default     = "eastus"
}

variable "account_tier" {
  description = "Standard"
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The storage account replication type"
  default     = "LRS"
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

}

output "storage_account_name" {
  value = azurerm_storage_account.storage_account.name
}

output "storage_account_id" {
  value = azurerm_storage_account.storage_account.id
}
