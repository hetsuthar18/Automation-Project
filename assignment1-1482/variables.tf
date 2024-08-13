variable "location" {
  description = "The location for the resources."
  type        = string
  default     = "Canada Central"
}

variable "rg_name" {
  description = "The name of the resource group"
  type        = string
  default = "rgroup"
}

variable "subnet_id" {
  type = string
  default = "/subscriptions/{cea387cf-fe14-4892-9d8f-551ea6982ece/resourceGroups/rg-1482/providers/Microsoft.Network/virtualNetworks/VNET-1482/subnets/SUBNET-1482"
}

variable "linux_vm_names" {
  description = "Map of Linux VM names and their corresponding IP addresses."
  type        = list(string)
  default     = ["vm1", "vm2", "vm3"]
}

variable "admin_username" {
  description = "The admin username for the VMs"
  type        = string
  default     = "hetsuthar"
}

variable "admin_password" {
  description = "Admin password for the VMs."
  type        = string
  default = "hello@1234"
  
}

variable "public_key_path" {
  description = "The path to the public key for SSH access"
  default = "/home/n01651482/.ssh/id_rsa.pub"
  
}


variable "public_ip_id" {
  description = "The public IP ID for the load balancer."
  type        = string
  default     = "/subscriptions/cea387cf-fe14-4892-9d8f-551ea6982ece/resourceGroups/example-resource-group/providers/Microsoft.Network/publicIPAddresses/publicIPAddressesValue"

}

variable "linux_vm_size" {
  description = "The size of the virtual machines."
  type        = string
  default     = "Standard_B1ms"
}

variable "ssh_public_key" {
  description = "The SSH public key"
  type        = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC6foei017cxPqSbabUJTdZBnrmhC/ttabRMSkQv4HB4K3LDmDbEXToPom9boV85f25buNTbwpEu1klscmAT3t+jjNMMov6VcVHOJS2LOcZe2TPNSlzCiyK1OL8+dY1JiU//t1XWb07e784gOMcxJI3zKyGTBLoTUfgLwLmrTfGu9MsCGEKcOEInNC7sIcN/IybJtWFB21mAmq/+BsPa7idYBp/YQBV1OwEY/c49V9lZidSeuzuXuJHSBek7t7d1tUG8mvsKbSmPLLBUc95/tXpnBANs53cfl9/AHizAk7+NtwIrM6YB0ZUBLjpn9XVhw37at6ZcSl5tumHNGBHmQ/lYtd58oLxYRswT99zU9IBS+XLX7QDmo0XMc9+ojq4WNas75VtQJXaJdx3I+NT5SyTzOg8vRUPaYeTkuP+ZMVUPVQ5BQMCSmCHlgNptaU7gw/i8LQugam9Nf0BqDx/2asoR0Ij4XjimX6suB9Nv1Pt4zdoTDf0crwMDfYskTVu4klz7VrRUU8rMY9pyA7dy/U1hn7lvspkkfvCoE44AHhu3+GT9CCv+6+JWkzhaErKA5geIyGBTCNUUTPNa0u1DqofXSZJq2OLzH001YVpSO/xkI2RGyFxaH/szNt8QoTW/zHK7aPnQ8zEECmulomRebkjj7hEWtS8/M3ZhlC8VlQ0bw== hetsuthar.canada@gmail.com"
}



variable "tags" {
  description = "A map of tags to be applied to the resources"
  type        = map(string)
  default = {
    Assignment     = "CCGC 5502 Automation Assignment"
    Name           = "het.suthar"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}


variable "windows_vm_count" {
  description = "The number of Windows VMs to be deployed"
  default     = 1
}

variable "vm_nics" {
  type = string
  default = "nicname"
}

variable "vm_name" {
  type        = list(string)
  default=  ["windows_vm"]
}
variable "windows_vm_size" {
  description = "The size of the Windows VM"
  default     = "Standard_B1ms"
}
 variable "log_analytics_workspace_id" {
  description = "Log Analytics Workspace ID"
  type        = string
  default = "/subscriptions/cea387cf-fe14-4892-9d8f-551ea6982ece/resourceGroups/tfstaten01651482RG/providers/Microsoft.OperationalInsights/workspaces/Het"
}

variable "postgresql_version" {
  description = "The version of PostgreSQL to use"
  default     = "11"
}

variable "ssl_enforcement_enabled" {
  description = "Whether SSL enforcement is enabled"
  default     = true
}
variable "private_key_path" {
  description = "Path to the private SSH key"
  type        = string
  default = "/home/n01651482/.ssh/id_rsa"
  
}

variable "linux_vm_fqdns" {
  description = "List of fully qualified domain names (FQDNs) for Linux virtual machines."
  type        = list(string)
  default     = []
}


variable "ARM_SUBSCRIPTION_ID" {
  description = "The subscription ID for Azure"
  default     = "cea387cf-fe14-4892-9d8f-551ea6982ece"
}

variable "ARM_CLIENT_ID" {
  description = "The client ID for Azure"
  default     = "92b4ea79-486f-4930-9bc8-0958e4e5ef7b"
}

variable "ARM_CLIENT_SECRET" {
  description = "The client secret for Azure"
  default     = "JRR8Q~sXE0c~kOIQTbOQn5U04PdmzjuoBMbspasU"
}

variable "ARM_TENANT_ID" {
  description = "The tenant ID for Azure"
  default     = "a45031c0-a49d-40b4-b188-cc5d815dc6cf"
}