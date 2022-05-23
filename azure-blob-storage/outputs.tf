output "blob url" {
  description = "url of blob storage"
  value       = try(azurem_storage_blob.marcin.url, "")
}
