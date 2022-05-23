resource "azurerm_resource_group" "marcin" {
  name     = var.name_resource_group
  location = var.location
}

resource "azurerm_storage_account" "marcin" {
  name                     = var.name_storage_account
  resource_group_name      = azurerm_resource_group.marcin.name
  location                 = azurerm_resource_group.marcin.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_app_service_plan" "marcin" {
  name                = var.name_app_service_plan
  location            = azurerm_resource_group.marcin.location
  resource_group_name = azurerm_resource_group.marcin.name

  sku {
    tier = var.tier_sku
    size = var.size_sku
  }
}

resource "azurerm_linux_function_app" "marcin" {
  name                = var.name_linux_function_app
  resource_group_name = azurerm_resource_group.marcin.name
  location            = azurerm_resource_group.marcin.location

  storage_account_name = azurerm_storage_account.marcin.name
  service_plan_id      = azurerm_service_plan.marcin.id

  site_config {}
}

resource "azurerm_function_app_function" "marcin" {
  name                       = var.name_test_azure_functions
  id                         = var.id_function_app_function
  location                   = azurerm_resource_group.marcin.location
  resource_group_name        = azurerm_resource_group.marcin.name
  app_service_plan_id        = azurerm_app_service_plan.marcin.id
  storage_account_name       = azurerm_storage_account.marcin.name
  storage_account_access_key = azurerm_storage_account.marcin.primary_access_key
}
