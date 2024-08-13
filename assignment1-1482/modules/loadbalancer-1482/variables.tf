variable "location" {
  type    = string
  default = "Canada Central"
}

variable "rg_name" {
  type    = string
  
}
variable "vm_name" {
  type        = list(string)
  default=  ["windows_vm"]
}


variable "tags" {
  description = "A map of tags to be applied to the resources"
  type        = map(string)
}
