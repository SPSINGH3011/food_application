module "rg" {
  source          = "../../modules/resource-group"
  resource_groups = var.resource_groups
}

module "vnet" {
  source     = "../../modules/vnet"
  depends_on = [module.rg]
  vnets      = var.vnets
}

module "subnet" {
  source     = "../../modules/subnet"
  depends_on = [module.vnet]
  subnets    = var.subnets
}

module "nsg" {
  source     = "../../modules/nsg"
  depends_on = [module.subnet]

  nsgs = var.nsgs

  associations = {
    assoc1 = {
      subnet_id = module.subnet.subnet_ids["subnet1"]
      nsg_name  = "nsg1"
    }
  }
}

module "sql" {
  source     = "../../modules/sql"
  depends_on = [module.rg]

  sql_servers = var.sql_servers
  databases   = var.databases
}

module "keyvault" {
  source     = "../../modules/keyvault"
  depends_on = [module.rg]

  keyvaults = var.keyvaults
}

module "app_service" {
  source     = "../../modules/app-service"
  depends_on = [module.rg]

  app_services = var.app_services
}
