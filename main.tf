terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.29.0"
    }
  }
}

provider "azurerm" {
  features {
  }
  subscription_id = "put you subscription ID"
}

module "resource_group_name" {
  source = "./resource-group"
  resource_group_name  = var.resource_group_name
  location             = var.location
}

module "storage" {
source = "./storage-account"
 
 resource_group_name = var.resource_group_name
 location = var.location
  storage_account_name = var.storage_account_name
  account_tier         = var.account_tier
  replication_type     = var.replication_type
  tags                 = var.tags

depends_on = [ module.resource_group_name]
}

module "VNet" {
  source = "./vnet"
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_name = var.subnet_name
  subnet_prefixes = var.subnet_prefixes
  tags                = var.tags
  
  depends_on = [ module.resource_group_name ]
}

module "nic" {
  source              = "./nic"
  nic_name            = "demo-nic"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = module.VNet.subnet_id
  tags                = var.tags
}

  
