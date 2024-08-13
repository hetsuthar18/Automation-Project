output "vm_hostnames" {
  value = { for k, v in azurerm_virtual_machine.vm : k => v.name }
}

output "linux_vm_ids" {
  value = [for vm in azurerm_virtual_machine.vm : vm.id]
}

output "vm_private_ips" {
  value = { for k, v in azurerm_network_interface.nic : k => v.private_ip_address }
}

output "vm_public_ips" {
  value = { for key, v in azurerm_public_ip.pip : key => v.ip_address }
}

output "avset_id" {
  value = azurerm_availability_set.avset.id
}

output "vm_nics" {
  value = [for nic in azurerm_network_interface.nic : nic.id]
}

# output "linux_vm_fqdns" {
#   value = [for pip in azurerm_public_ip.pip : pip.domain_name_label]
# }

# output "linux_vm_fqdns" {
#   value = [for vm in azurerm_virtual_machine.vm : vm.fqdn]
# }

output "linux_vm_fqdns" {
  description = "The Fully Qualified Domain Names of the Linux VMs"
  value       = var.linux_vm_fqdns
}
