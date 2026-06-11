resource "azurerm_resource_group" "rgs1" {
    name = "beta"
    location = "Central US"
  
}

resource "azurerm_storage_account" "strg" {
    name = "alphastrg45"
    location = azurerm_resource_group.rgs1.location
    resource_group_name = azurerm_resource_group.rgs1.name
    account_tier = "Standard"
    account_replication_type = "ZRS"
  
}