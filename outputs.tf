output "resource_group_name" {
  value = module.resource_group_name
}

output "storage_account_id" {
  value = module.storage.storage_account_id
}

output "vnet_id" {
  value = module.VNet.vnet_id
}

output "nic_id" {
  value = module.nic.nic_id
}
