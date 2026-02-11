output "app_service_ids" {
  value = { for k, v in azurerm_windows_web_app.app : k => v.id }
}
