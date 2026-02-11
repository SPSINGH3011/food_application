output "vnet_names" {
  value = { for k, v in azurerm_virtual_network.vnet : k => v.name }
}
