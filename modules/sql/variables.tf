variable "sql_servers" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    admin_login         = string
    admin_password      = string
  }))
}

variable "databases" {
  type = map(object({
    name      = string
    server_key = string
  }))
}
