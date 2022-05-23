variable "name_marcin_resources" {
  desctription = "name of marcin resource"
  type = string
  default = "marcin-resources"
}

variable "location" {
  desctription = "location"
  type = string
  default = "West Europe"
}

variable "name_storage_account" {
  desctription = "name of storage account"
  type = string
  default = "marcinstorage"
}

variable "account_tier" {
  desctription = "account tier"
  type = string
  default = "Standard"
}

variable "account_replication_type" {
  desctription = "type"
  type = string
  default = "LRS"
}

variable "name_storage_container" {
  desctription = "name of storage container"
  type = string
  default = "content"
}

variable "access_container_type" {
  desctription = "type"
  type = string
  default = "private"
}
