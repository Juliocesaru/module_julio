variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "resource_group_name" {
  description = "azlb"
  type        = string
}

data "azurerm_resource_group" "azlb" {
  name = var.resource_group_name
}
