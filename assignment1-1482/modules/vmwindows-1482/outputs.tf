output "windows_vm_hostname" {
  value = azurerm_virtual_machine.windows_vm.name
}

output "windows_vm_private_ip" {
  value = azurerm_network_interface.nic.private_ip_address
}

output "windows_vm_public_ip" {
  value = azurerm_public_ip.pip.ip_address
}

output "windows_vm_fqdns" {
  value = azurerm_public_ip.pip.fqdn
}

output "windows_vm_ids" {
 value = [azurerm_virtual_machine.windows_vm.id]
}
