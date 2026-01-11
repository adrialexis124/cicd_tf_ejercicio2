# Output the public IP address
output "public_ip_address" {
  value = azurerm_public_ip.vm_public_ip.ip_address
  description = "The public IP address of the virtual machine"
}

# Output the SSH connection commanddsds
output "ssh_connection_command" {
  value = "ssh -i private_key.pem ${var.admin_username}@${azurerm_public_ip.vm_public_ip.ip_address}"
  description = "Command to connect to the VM via SSH"
}

# Output the private key (sensitive)
output "private_key" {
  value     = tls_private_key.vm_ssh.private_key_pem
  sensitive = true
  description = "Private SSH key to connect to the VM"
}

# Output the public key
output "public_key" {
  value = tls_private_key.vm_ssh.public_key_openssh
  description = "Public SSH key"
}

# Output VM details
output "vm_name" {
  value = azurerm_linux_virtual_machine.vm.name
  description = "Name of the virtual machine"
}

output "vm_size" {
  value = azurerm_linux_virtual_machine.vm.size
  description = "Size of the virtual machine"
}

# Output resource group name
output "resource_group_name" {
  value = azurerm_resource_group.rg.name
  description = "Name of the resource group"
}