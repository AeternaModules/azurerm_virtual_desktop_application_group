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
  # --- Unconfirmed validation candidates, derived from azurerm_virtual_desktop_application_group's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.ApplicationGroupName] !ok
  # path: name
  #   condition: length(value) > 0
  #   message:   [from validate.ApplicationGroupName: invalid when value == ""]
  #   source:    [from validate.ApplicationGroupName: invalid when value == ""]
  # path: name
  #   source:    [from validate.ApplicationGroupName] len(v) > maxLength || len(v) < minLength
  # path: name
  #   source:    [from validate.ApplicationGroupName] !matched
  # path: name
  #   source:    [from validate.ApplicationGroupName] !matched
  # path: name
  #   source:    [from validate.ApplicationGroupName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: host_pool_id
  #   source:    [from hostpool.ValidateHostPoolID] !ok
  # path: host_pool_id
  #   source:    [from hostpool.ValidateHostPoolID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

