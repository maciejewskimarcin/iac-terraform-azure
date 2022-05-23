variable "name_resource_group" {
  desctription = "name of resource group"
  type = string
  default = "azure-functions-test-rg"
}

variable "location" {
  dectription = "location"
  type = string
  default = "West Europe"
}

variable "name_storage_account" {
  dectription = "name of storage account"
  type = string
  default = "functionsapptestsa"
}

variable "storage_account_tier" {
  dectription = "tier"
  type = string
  default = "Standard"
 }

variable "storage_account_replication_type" {
  dectription = "type"
  type = string
  default = "LRS"
}

variable "name_app_service_plan" {
  dectription = "name of app service plan"
  type = string
  default = "azure-functions-test-service-plan"
}

variable "tier_sku" {
  dectription = "tier"
  type = string
  default = "Standard"
}

variable "size_sku" {
  dectription = "size"
  type = string
  default = "S1"
}

variable "name_linux_function_app" {
  dectription = "name of linux function app"
  type = string
  default = "example-linux-function-app"
}

variable "name_test_azure_functions" {
  dectription = "name of test azure functions"
  type = string
  default = "test-azure-functions"
}

variable "id_function_app_function" {
 description = "id"
 type = string
 default = "12345"
}
