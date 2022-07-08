## Example of how the component can be used

module "redis_cache" {
  source                          = "../"
  name                            = "redisdemo"
  environment                     = "dev"
  region                          = "eastus2"
  resource_group                  = ""
  capacity_sku                    = { capacity = 1, sku_name = "Standard" }
  enable_non_ssl_port             = false
  minimum_tls_version             = "1.0"
  public_network_access_enabled   = false
  replicas_per_master             = null
  replicas_per_primary            = null
  redis_version                   = 4
  shard_count                     = 0
  aof_backup_enabled              = false
  aof_storage_connection_string_0 = ""
  aof_storage_connection_string_1 = ""
  enable_authentication           = true
  maxmemory_reserved              = var.maxmemory_reserved
  maxmemory_delta                 = var.maxmemory_delta
  maxmemory_policy                = var.maxmemory_policy
  maxfragmentationmemory_reserved = var.maxfragmentationmemory_reserved
  rdb_backup_enabled              = var.rdb_backup_enabled
  rdb_backup_frequency            = var.rdb_backup_frequency
  rdb_backup_max_snapshot_count   = var.rdb_backup_max_snapshot_count
  rdb_storage_connection_string   = var.rdb_storage_connection_string
}
