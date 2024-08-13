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
variable "nic_id" {
  type = string
}

variable "tags" {
  description = "A map of tags to be applied to the resources"
  type        = map(string)
}