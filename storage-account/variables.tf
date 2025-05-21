
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}
variable "storage_account_name" {
  type        = string
  description = "The name of the storage account"
}

variable "account_tier" {
  type        = string
  description = "Storage account tier (Standard or Premium)"
  default     = "Standard"
}

variable "replication_type" {
  type        = string
  description = "Replication type (LRS, GRS, etc.)"
  default     = "LRS"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the resources"
  default     = {}
}
