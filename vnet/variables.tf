variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "vnet_name" {
  type        = string
  description = "The name of the virtual network"
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the VNet"
}

variable "tags" {
  type        = map(string)
  default     = {}
}

variable "subnet_name" {
  type = string
}

variable "subnet_prefixes" {
  type = list(string)
}
