variable "nic_name" {
  type        = string
  description = "Name of the network interface"
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "ip_config_name" {
  type        = string
  default     = "ipconfig1"
  description = "Name for the IP configuration"
}

variable "subnet_id" {
  type        = string
  description = "The subnet ID where NIC will be attached"
}

variable "public_ip_id" {
  type        = string
  default     = null
  description = "Optional Public IP ID"
}

variable "private_ip_allocation" {
  type        = string
  default     = "Dynamic"
  description = "Private IP allocation method (Static or Dynamic)"
}

variable "tags" {
  type    = map(string)
  default = {}
}
