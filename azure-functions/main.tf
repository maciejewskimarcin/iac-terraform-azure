provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" {
  name     = "resources"
  location = "West Europe"
}

resource "azurerm_storage_account" {
  name                     = "linuxfunctionappsa"
  resource_group_name      = azurerm_resource_group.name
  location                 = azurerm_resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_service_plan" {
  name                = "app-service-plan"
  resource_group_name = azurerm_resource_group.name
  location            = azurerm_resource_group.location
  os_type             = "Linux"
  sku_name            = "Y1"
}

resource "azurerm_linux_function_app" {
  name                = "linux-function-app"
  resource_group_name = azurerm_resource_group.name
  location            = azurerm_resource_group.location

  storage_account_name = azurerm_storage_account.name
  service_plan_id      = azurerm_service_plan.id

  site_config {}
}
