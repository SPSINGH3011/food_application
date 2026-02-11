variable "app_services" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    service_plan_name   = string
  }))
}
