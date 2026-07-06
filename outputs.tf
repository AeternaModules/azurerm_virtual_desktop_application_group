output "virtual_desktop_application_groups" {
  description = "All virtual_desktop_application_group resources"
  value       = azurerm_virtual_desktop_application_group.virtual_desktop_application_groups
}
output "virtual_desktop_application_groups_default_desktop_display_name" {
  description = "List of default_desktop_display_name values across all virtual_desktop_application_groups"
  value       = [for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : v.default_desktop_display_name]
}
output "virtual_desktop_application_groups_description" {
  description = "List of description values across all virtual_desktop_application_groups"
  value       = [for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : v.description]
}
output "virtual_desktop_application_groups_friendly_name" {
  description = "List of friendly_name values across all virtual_desktop_application_groups"
  value       = [for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : v.friendly_name]
}
output "virtual_desktop_application_groups_host_pool_id" {
  description = "List of host_pool_id values across all virtual_desktop_application_groups"
  value       = [for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : v.host_pool_id]
}
output "virtual_desktop_application_groups_location" {
  description = "List of location values across all virtual_desktop_application_groups"
  value       = [for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : v.location]
}
output "virtual_desktop_application_groups_name" {
  description = "List of name values across all virtual_desktop_application_groups"
  value       = [for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : v.name]
}
output "virtual_desktop_application_groups_resource_group_name" {
  description = "List of resource_group_name values across all virtual_desktop_application_groups"
  value       = [for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : v.resource_group_name]
}
output "virtual_desktop_application_groups_tags" {
  description = "List of tags values across all virtual_desktop_application_groups"
  value       = [for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : v.tags]
}
output "virtual_desktop_application_groups_type" {
  description = "List of type values across all virtual_desktop_application_groups"
  value       = [for k, v in azurerm_virtual_desktop_application_group.virtual_desktop_application_groups : v.type]
}

