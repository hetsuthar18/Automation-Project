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

variable "tags" {
  description = "A map of tags to be applied to the resources"
  type        = map(string)
}
variable "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics Workspace for diagnostics"
  type        = string
  default     = "/subscriptions/cea387cf-fe14-4892-9d8f-551ea6982ece/resourceGroups/tfstaten01651482RG/providers/Microsoft.OperationalInsights/workspaces/het"
}
