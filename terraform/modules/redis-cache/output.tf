output "id" {
  description = "The Route ID"
  value       = azurerm_redis_cache.instance.id
}

output "name" {
  description = "Name of the Redis Instance"
  value       = azurerm_redis_cache.instance.name
}

output "hostname" {
  description = "The Hostname of the Redis Instance"
  value       = azurerm_redis_cache.instance.hostname
}

output "ssl_port" {
  description = "The SSL Port of the Redis Instance"
  value       = azurerm_redis_cache.instance.ssl_port
}

output "port" {
  description = "The non-SSL Port of the Redis Instance"
  value       = azurerm_redis_cache.instance.port
}

output "primary_access_key" {
  description = "The Primary Access Key for the Redis Instance"
  value       = azurerm_redis_cache.instance.primary_access_key
}

output "secondary_access_key" {
  description = "The Secondary Access Key for the Redis Instance"
  value       = azurerm_redis_cache.instance.secondary_access_key
}

output "primary_connection_string" {
  description = "The primary connection string of the Redis Instance."
  value       = azurerm_redis_cache.instance.primary_connection_string
}

output "secondary_connection_string" {
  description = "The secondary connection string of the Redis Instance."
  value       = azurerm_redis_cache.instance.secondary_connection_string
}
