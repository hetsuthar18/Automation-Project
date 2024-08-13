output "resource_group_name" {
  value = module.resource_group.rg_name
}

output "vnet_name" {
  value = module.network.vnet_name
}

output "subnet_name" {
  value = module.network.subnet_name
}

output "log_analytics_name" {
  value = module.common_services.log_analytics_name
}

output "recovery_vault_name" {
  value = module.common_services.recovery_vault_name
}

output "storage_account_name" {
  value = module.common_services.storage_account_name
}

output "linux_vm_hostnames" {
  value = module.linux_vms.vm_hostnames
}

output "linux_vm_private_ips" {
  value = module.linux_vms.vm_private_ips
}

output "linux_vm_public_ips" {
  value = module.linux_vms.vm_public_ips
}

output "windows_vm_hostname" {
  value = module.windows_vm.windows_vm_hostname
}

output "windows_vm_private_ip" {
  value = module.windows_vm.windows_vm_private_ip
}

output "windows_vm_public_ip" {
  value = module.windows_vm.windows_vm_public_ip
}

output "load_balancer_name" {
  value = module.load_balancer.load_balancer_name
}

output "postgresql_server_name" {
  value = module.database.postgresql_server_name
}

output "linux_vm_ids" {
  value = module.linux_vms.linux_vm_ids
}

output "windows_vm_ids" {
  value = module.windows_vm.windows_vm_ids
}

output "vm_fqdns" {
  value = module.linux_vms.linux_vm_fqdns
}

output "debug_linux_vm_fqdns" {
  value = module.linux_vms.linux_vm_fqdns
}
