variable "config" {
  description = "Contains all user assigned identity configuration"
  type = object({
    name           = string
    resource_group = optional(string)
    location       = optional(string)
    tags           = optional(map(string))
  })
}

variable "location" {
  description = "default azure region to be used."
  type        = string
  default     = null
}

variable "resource_group" {
  description = "default resource group to be used."
  type        = string
  default     = null
}

variable "tags" {
  description = "tags to be added to the resources"
  type        = map(string)
  default     = {}
}
