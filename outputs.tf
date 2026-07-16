output "virtual_desktop_application_groups_id" {
  description = "Map of id values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "virtual_desktop_application_groups_default_desktop_display_name" {
  description = "Map of default_desktop_display_name values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.default_desktop_display_name if v.default_desktop_display_name != null && length(v.default_desktop_display_name) > 0 }
}
output "virtual_desktop_application_groups_description" {
  description = "Map of description values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "virtual_desktop_application_groups_friendly_name" {
  description = "Map of friendly_name values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.friendly_name if v.friendly_name != null && length(v.friendly_name) > 0 }
}
output "virtual_desktop_application_groups_host_pool_id" {
  description = "Map of host_pool_id values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.host_pool_id if v.host_pool_id != null && length(v.host_pool_id) > 0 }
}
output "virtual_desktop_application_groups_location" {
  description = "Map of location values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.location if v.location != null && length(v.location) > 0 }
}
output "virtual_desktop_application_groups_name" {
  description = "Map of name values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "virtual_desktop_application_groups_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "virtual_desktop_application_groups_tags" {
  description = "Map of tags values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "virtual_desktop_application_groups_type" {
  description = "Map of type values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.type if v.type != null && length(v.type) > 0 }
}

