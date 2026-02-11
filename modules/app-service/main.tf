resource "azurerm_service_plan" "app" {
  for_each = var.app_services

  name                = each.value.service_plan_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  os_type             = "Windows"
  sku_name            = "B1"
}

resource "azurerm_windows_web_app" "app" {
  for_each = var.app_services

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  service_plan_id     = azurerm_service_plan.app[each.key].id

  site_config {}
}
