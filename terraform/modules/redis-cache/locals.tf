locals {
  redis_family_map = {
    Basic    = "C",
    Standard = "C",
    Premium  = "P"
  }

  #Default redis configuration values based on sku name
  maxmemory_reserved_map = {
    Basic    = 2,
    Standard = 50,
    Premium  = 500
  }

  maxmemory_delta_map = {
    Basic    = 2,
    Standard = 50,
    Premium  = 500
  }

  maxfragmentationmemory_reserved_map = {
    Basic    = 2,
    Standard = 50,
    Premium  = 500
  }

  data_persistence_enabled = var.sku_name == "Premium" ? var.rdb_backup_enabled : false #below config is only valid for premium sku)
  redis_config = {
    rdb_backup_enabled            = local.data_persistence_enabled
    rdb_storage_connection_string = local.data_persistence_enabled ? var.rdb_storage_connection_string : null
    rdb_backup_frequency          = local.data_persistence_enabled ? var.rdb_backup_frequency : null
    rdb_backup_max_snapshot_count = local.data_persistence_enabled ? var.rdb_backup_max_snapshot_count : null
  }
}
