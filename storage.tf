resource "azurerm_storage_account" "storage" {
  name                     = "widstoragewebapp01"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  #  allow_blob_public_access = false
}
