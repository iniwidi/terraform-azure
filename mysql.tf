resource "azurerm_mysql_flexible_server" "mysql" {
  name                   = "wid-mysql-dbserver"
  location               = var.location
  resource_group_name    = azurerm_resource_group.main.name
  administrator_login    = "mysqladmin"
  administrator_password = "MyS3cur3P@ssw0rd"
  sku_name               = "B_Standard_B1ms"
  version                = "8.0.21"
  zone                   = "1"

  storage {
    size_gb = 20
  }

  # high_availability {
  #   mode = "Disabled"
  # }

  delegated_subnet_id = azurerm_subnet.subnet_mysql.id
  private_dns_zone_id = azurerm_private_dns_zone.mysql.id

#  depends_on = [azurerm_subnet_network_security_group_association.nsg_assoc]
depends_on = [
  azurerm_subnet.subnet,
  azurerm_subnet_network_security_group_association.nsg_assoc
]

  tags = {
    owner       = "WID"
    Team        = "MS"
    Description = "Resources For WID project"
    Environment = "Research"
  }
}
