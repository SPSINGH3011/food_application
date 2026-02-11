variable "nsgs" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}

variable "associations" {
  type = map(object({
    subnet_id = string
    nsg_name  = string
  }))
}
