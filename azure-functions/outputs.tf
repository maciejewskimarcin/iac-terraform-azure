output = "function.id" {
  description = "id"
  value = try(azurerm_function_app_function.marcin.id, "")
}
