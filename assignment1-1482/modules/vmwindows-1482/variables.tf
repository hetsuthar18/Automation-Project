variable "location" {
  type    = string
  default = "Canada Central"
}

variable "rg_name" {
  type = string
}

variable "avset_id" {
  type = string
}

variable "nic_id" {
  type = string
}

variable "admin_username" {
  description = "The admin username for the VMs"
  type        = string
}

variable "admin_password" {
  type = string
}

variable "subnet_id" {
  description = "The ID of the subnet for the Windows VM."
  type        = string
}

variable "vm_size" {
  type    = string
  default = "Standard_B1ms"
}

variable "tags" {
  description = "A map of tags to be applied to the resources"
  type        = map(string)
}

variable "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics Workspace for diagnostics"
  type        = string
}

variable "vm_name" {
  type        = list(string)
}