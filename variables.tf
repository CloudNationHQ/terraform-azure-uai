variable "identity" {
  description = "contains all user assigned identity configuration"
  type = object({
    name                = string
    resource_group_name = optional(string)
    location            = optional(string)
    tags                = optional(map(string))
    isolation_scope     = optional(string)
    federated_credentials = optional(map(object({
      name     = optional(string)
      audience = list(string)
      issuer   = string
      subject  = string
    })), {})
  })

  validation {
    condition     = lookup(var.identity, "location", null) != null || var.location != null
    error_message = "location must be set on var.identity.location or on the module-level var.location."
  }

  validation {
    condition     = lookup(var.identity, "resource_group_name", null) != null || var.resource_group_name != null
    error_message = "resource_group_name must be set on var.identity.resource_group_name or on the module-level var.resource_group_name."
  }
}

variable "location" {
  description = "default azure region to be used."
  type        = string
  default     = null
}

variable "resource_group_name" {
  description = "default resource group to be used."
  type        = string
  default     = null
}

variable "tags" {
  description = "tags to be added to the resources"
  type        = map(string)
  default     = {}
}
