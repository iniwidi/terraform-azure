resource "azurerm_private_dns_zone" "mysql" {
  name                = "privatelink.mysql.database.azure.com"
  resource_group_name = azurerm_resource_group.main.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "mysql_link" {
  name                  = "mysql-dnslink"
  resource_group_name   = azurerm_resource_group.main.name
  private_dns_zone_name = azurerm_private_dns_zone.mysql.name
  virtual_network_id    = azurerm_virtual_network.vnet.id
}
