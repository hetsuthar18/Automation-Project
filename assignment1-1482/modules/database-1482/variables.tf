variable "location" {
  type    = string
  default = "Canada Central"
}

variable "rg_name" {
  type = string
}
variable "admin_username" {
  description = "The admin username for the PostgreSQL server"
  type        = string
}
variable "admin_password" {
  type = string
}
variable "tags" {
  description = "A map of tags to be applied to the resources"
  type        = map(string)
}

variable "postgresql_version" {
  description = "The version of PostgreSQL to use"
  type        = string
}

variable "ssl_enforcement_enabled" {
  description = "Whether SSL enforcement is enabled"
  type        = bool
}
