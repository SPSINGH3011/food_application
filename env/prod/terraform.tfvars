location = "Central India"

# =========================
# RESOURCE GROUP
# =========================

resource_groups = {
  rg1 = {
    name     = "dev-rg"
    location = "Central India"
  }
}

# =========================
# VNET
# =========================

vnets = {
  vnet1 = {
    name                = "dev-vnet"
    location            = "Central India"
    resource_group_name = "dev-rg"
    address_space       = ["10.0.0.0/16"]
  }
}

# =========================
# SUBNET
# =========================

subnets = {
  subnet1 = {
    name                 = "dev-subnet"
    resource_group_name  = "dev-rg"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

# =========================
# NSG
# =========================

nsgs = {
  nsg1 = {
    name                = "dev-nsg"
    location            = "Central India"
    resource_group_name = "dev-rg"
  }
}

# # ⚠️ Important:
# # Association static id nahi denge.
# # Isko main.tf me module output se link karna better practice hai.
# associations = {}

# =========================
# SQL SERVER
# =========================

sql_servers = {
  sql1 = {
    name                = "dev-sql-server-12345"
    location            = "Central India"
    resource_group_name = "dev-rg"
    admin_login         = "sqladminuser"
    admin_password      = "P@ssword1234!"
  }
}

databases = {
  db1 = {
    name       = "dev-db"
    server_key = "sql1"
  }
}

# =========================
# KEYVAULT
# =========================

keyvaults = {
  kv1 = {
    name                = "dev-keyvault-12345"
    location            = "Central India"
    resource_group_name = "dev-rg"
    tenant_id           = "56e600c7-b81c-4533-b667-0b8b1655df55"
  }
}

# =========================
# APP SERVICE
# =========================

app_services = {
  app1 = {
    name                = "dev-app-service-12345"
    location            = "Central India"
    resource_group_name = "dev-rg"
    service_plan_name   = "dev-app-plan"
  }
}
