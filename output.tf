output "public_ip_address" {
  description = "Public IP of VM"
  value       = azurerm_public_ip.main.ip_address
}

output "vm_name" {
  description = "VM name"
  value       = azurerm_linux_virtual_machine.main.name
}

output "vm_id" {
  description = "VM resource ID"
  value       = azurerm_linux_virtual_machine.main.id
}

output "resource_group_name" {
  description = "Resource group name"
  value       = azurerm_resource_group.main.name
}

output "virtual_network_name" {
  description = "VNet name"
  value       = azurerm_virtual_network.main.name
}

output "subnet_name" {
  description = "Subnet name"
  value       = azurerm_subnet.main.name
}

output "network_interface_id" {
  description = "NIC ID"
  value       = azurerm_network_interface.main.id
}