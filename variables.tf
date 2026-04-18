variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vm_name" {
  description = "Virtual machine name"
  type        = string
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
}

variable "admin_username" {
  description = "Admin username for VM"
  type        = string
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key file"
  type        = string
}

variable "virtual_network_name" {
  description = "Virtual network name"
  type        = string
}

variable "vnet_address_space" {
  description = "VNet address space"
  type        = list(string)
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Subnet address prefixes"
  type        = list(string)
}

variable "public_ip_name" {
  description = "Public IP name"
  type        = string
}

variable "network_interface_name" {
  description = "NIC name"
  type        = string
}

variable "nsg_name" {
  description = "Network Security Group name"
  type        = string
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
}