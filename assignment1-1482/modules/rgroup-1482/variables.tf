variable "admin_password" {
  type = string
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
}

variable "tags" {
  description = "A map of tags to be applied to the resources"
  type        = map(string)
}
