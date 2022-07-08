## Call naming module here to generate all the resource names based on the organisation's rules

#Create a resource group if resource group name is empty
resource "azurerm_resource_group" "rg" {
  count    = var.resource_group == "" ? 1 : 0
  name     = "${var.name}-rg" ##Generate a resourse group name using naming module
  location = var.region
}

module "redis_cache" {
  source                          = "../../modules/redis-cache"
  name                            = var.name #Generate name using naming module e.g. module.naming.redis_cache.name
  resource_group_name             = var.resource_group == "" ? azurerm_resource_group.rg[0].name : var.resource_group
  capacity                        = var.capacity_sku.capacity
  sku_name                        = var.capacity_sku.sku_name
  enable_non_ssl_port             = var.enable_non_ssl_port
  minimum_tls_version             = var.minimum_tls_version
  private_static_ip_address       = var.private_static_ip_address
  public_network_access_enabled   = var.public_network_access_enabled
  replicas_per_master             = var.replicas_per_master
  replicas_per_primary            = var.replicas_per_primary
  redis_version                   = var.redis_version
  shard_count                     = var.shard_count
  subnet_id                       = var.subnet_id
  aof_backup_enabled              = var.aof_backup_enabled
  aof_storage_connection_string_0 = var.aof_storage_connection_string_0
  aof_storage_connection_string_1 = var.aof_storage_connection_string_1
  enable_authentication           = var.enable_authentication
  maxmemory_reserved              = var.maxmemory_reserved
  maxmemory_delta                 = var.maxmemory_delta
  maxmemory_policy                = var.maxmemory_policy
  maxfragmentationmemory_reserved = var.maxfragmentationmemory_reserved
  rdb_backup_enabled              = var.rdb_backup_enabled
  rdb_backup_frequency            = var.rdb_backup_frequency
  rdb_backup_max_snapshot_count   = var.rdb_backup_max_snapshot_count
  rdb_storage_connection_string   = var.rdb_storage_connection_string
  location                        = var.region
  tags                            = local.tags
}

## This component can call other independent modules like keyvault to store all the secrets produced here.
  