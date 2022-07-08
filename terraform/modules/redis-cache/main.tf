# NOTE: the Name used for Redis needs to be globally unique
resource "azurerm_redis_cache" "instance" {
  name                          = var.name
  resource_group_name           = var.resource_group_name
  capacity                      = var.capacity
  family                        = lookup(local.redis_family_map, var.sku_name)
  sku_name                      = var.sku_name
  enable_non_ssl_port           = var.enable_non_ssl_port
  minimum_tls_version           = var.minimum_tls_version
  private_static_ip_address     = var.private_static_ip_address
  public_network_access_enabled = var.public_network_access_enabled
  replicas_per_master           = var.sku_name == "Premium" && var.shard_count == 0 ? var.replicas_per_master : null                        ##Configuring the number of replicas per master is only available when using the Premium SKU and cannot be used in conjunction with shards
  replicas_per_primary          = var.replicas_per_master != 0 && var.shard_count == 0 ? var.replicas_per_master : var.replicas_per_primary ##If both replicas_per_primary and replicas_per_master are set, they need to be equal.
  redis_version                 = var.redis_version
  shard_count                   = var.sku_name == "Premium" ? var.shard_count : 0  ##Only available when using the Premium SKU
  subnet_id                     = var.sku_name == "Premium" ? var.subnet_id : null ##Only available when using the Premium SKU
  location                      = var.location
  tags                          = var.tags

  redis_configuration {
    aof_backup_enabled              = var.aof_backup_enabled
    aof_storage_connection_string_0 = var.aof_storage_connection_string_0
    aof_storage_connection_string_1 = var.aof_storage_connection_string_1
    enable_authentication           = var.enable_authentication
    maxmemory_reserved              = var.maxmemory_reserved == null ? lookup(local.maxmemory_reserved_map, var.sku_name) : var.maxmemory_reserved
    maxmemory_delta                 = var.maxmemory_delta == null ? lookup(local.maxmemory_delta_map, var.sku_name) : var.maxmemory_delta
    maxmemory_policy                = var.maxmemory_policy
    maxfragmentationmemory_reserved = var.maxfragmentationmemory_reserved == null ? lookup(local.maxfragmentationmemory_reserved_map, var.sku_name) : var.maxfragmentationmemory_reserved
    rdb_backup_enabled              = lookup(local.redis_config, "rdb_backup_enabled")
    rdb_backup_frequency            = lookup(local.redis_config, "rdb_backup_frequency")
    rdb_backup_max_snapshot_count   = lookup(local.redis_config, "rdb_backup_max_snapshot_count")
    rdb_storage_connection_string   = lookup(local.redis_config, "rdb_storage_connection_string")
  }
  #There's a bug in the Redis API where the original storage connection string isn't being returned. Using ignore_changes attribute to ignore changes to this field until the bug has been fixed.
  lifecycle {
    ignore_changes = [redis_configuration[0].rdb_storage_connection_string]
  }
}
