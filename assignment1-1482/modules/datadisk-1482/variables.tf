variable "location" {
  type    = string
  default = "Canada Central"
}

variable "rg_name" {
  type = string
}

variable "admin_password" {
  type = string
}

variable "linux_vm_ids" {
  description = "List of Linux VM IDs"
  type        = list(string)
}

variable "windows_vm_ids" {
  description = "List of Windows VM IDs"
  type        = list(string)
}
