variable "virtual_desktop_application_groups" {
  description = <<EOT
Map of virtual_desktop_application_groups, attributes below
Required:
    - host_pool_id
    - location
    - name
    - resource_group_name
    - type
Optional:
    - default_desktop_display_name
    - description
    - friendly_name
    - tags
EOT

  type = map(object({
    host_pool_id                 = string
    location                     = string
    name                         = string
    resource_group_name          = string
    type                         = string
    default_desktop_display_name = optional(string)
    description                  = optional(string)
    friendly_name                = optional(string)
    tags                         = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_application_groups : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_application_groups : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_application_groups : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_application_groups : (
        v.friendly_name == null || (length(v.friendly_name) >= 1 && length(v.friendly_name) <= 64)
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_application_groups : (
        v.default_desktop_display_name == null || (length(v.default_desktop_display_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_application_groups : (
        v.description == null || (length(v.description) >= 1 && length(v.description) <= 512)
      )
    ])
    error_message = "must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_application_groups : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 14 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

