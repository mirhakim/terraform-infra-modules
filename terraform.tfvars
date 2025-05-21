resource_group_name  = "demo-rg"
location             = "eastus"
storage_account_name = "demostoreacct0109"
vnet_name            = "demo-vnet"
address_space        = ["10.0.0.0/16"]
subnet_name = "web-subnet"
subnet_prefixes = [ "10.0.1.0/24" ]
tags = {
  environment = "demo"
  
}

