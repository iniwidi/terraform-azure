output "vm_public_ip" {
  value = azurerm_public_ip.vm_public.ip_address
}

output "mysql_fqdn" {
  value = azurerm_mysql_flexible_server.mysql.fqdn
}

output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}
