output "rg_names" {
  value = { for k, v in azurerm_resource_group.rgs : k => v.name }
}
