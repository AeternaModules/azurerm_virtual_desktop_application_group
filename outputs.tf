output "virtual_desktop_application_groups_default_desktop_display_name" {
  description = "Map of default_desktop_display_name values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.default_desktop_display_name }
}
output "virtual_desktop_application_groups_description" {
  description = "Map of description values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.description }
}
output "virtual_desktop_application_groups_friendly_name" {
  description = "Map of friendly_name values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.friendly_name }
}
output "virtual_desktop_application_groups_host_pool_id" {
  description = "Map of host_pool_id values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.host_pool_id }
}
output "virtual_desktop_application_groups_location" {
  description = "Map of location values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.location }
}
output "virtual_desktop_application_groups_name" {
  description = "Map of name values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.name }
}
output "virtual_desktop_application_groups_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.resource_group_name }
}
output "virtual_desktop_application_groups_tags" {
  description = "Map of tags values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.tags }
}
output "virtual_desktop_application_groups_type" {
  description = "Map of type values across all virtual_desktop_application_groups, keyed the same as var.virtual_desktop_application_groups"
  value       = { for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : k => v.type }
}

