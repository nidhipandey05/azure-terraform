output "id" {
  description = "The Route ID"
  value       = module.redis_cache.id
}

output "name" {
  description = "Name of the Redis Instance"
  value       = module.redis_cache.name
}

output "hostname" {
  description = "The Hostname of the Redis Instance"
  value       = module.redis_cache.hostname
}

output "ssl_port" {
  description = "The SSL Port of the Redis Instance"
  value       = module.redis_cache.ssl_port
}

output "port" {
  description = "The non-SSL Port of the Redis Instance"
  value       = module.redis_cache.port
}

output "primary_access_key" {
  description = "The Primary Access Key for the Redis Instance"
  value       = module.redis_cache.primary_access_key
  sensitive   = true
}

output "secondary_access_key" {
  description = "The Secondary Access Key for the Redis Instance"
  value       = module.redis_cache.secondary_access_key
  sensitive   = true
}

output "primary_connection_string" {
  description = "The primary connection string of the Redis Instance."
  value       = module.redis_cache.primary_connection_string
  sensitive   = true
}

output "secondary_connection_string" {
  description = "The secondary connection string of the Redis Instance."
  value       = module.redis_cache.secondary_connection_string
  sensitive   = true
}
