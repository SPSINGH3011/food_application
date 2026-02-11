resource "azurerm_key_vault" "kv" {
  for_each = var.keyvaults

  name                        = each.value.name
  location                    = each.value.location
  resource_group_name         = each.value.resource_group_name
  tenant_id                   = each.value.tenant_id
  sku_name                    = "standard"
}
