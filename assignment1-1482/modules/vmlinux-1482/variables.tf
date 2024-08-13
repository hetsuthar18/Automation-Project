variable "location" {
  type    = string
  default = "Canada Central"
}

variable "rg_name" {
  type = string
}

variable "subnet_id" {
  type = string
}


variable "admin_username" {
  description = "The admin username for the VMs"
  type        = string
}
variable "admin_password" {
  type = string
  sensitive = true
}
variable "public_key_path" {
  description = "The path to the public key for SSH access"
  type        = string
}

variable "private_key_path" {
  description = "The path to the private key for SSH access"
  type        = string
}
variable "storage_account_uri" {
  description = "The URI of the storage account"
  type        = string
}
variable "ssh_public_key" {
  description = "The SSH public key"
  type        = string
}

variable "ssh_private_key" {
  description = "The SSH private key"
  type        = string
  sensitive   = true
}

variable "linux_vm_names" {
  type    = list(string)
  
}
variable "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics Workspace for diagnostics"
  type        = string
}

variable "tags" {
  description = "A map of tags to be applied to the resources"
  type        = map(string)
}
variable "vm_size" {
  type    = string
  default = "Standard_B1ms"
}

variable "linux_vm_fqdns" {
  description = "List of Fully Qualified Domain Names of the Linux VMs"
  type        = list(string)
  default     = []
}
