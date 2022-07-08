variable "maxmemory_reserved" {
  type        = number
  description = "Value in megabytes reserved for non-cache usage e.g. failover. Defaults are shown below."
  default     = null
}

variable "maxmemory_delta" {
  type        = number
  description = "The max-memory delta for this Redis instance. Defaults are shown below."
  default     = null
}

variable "maxmemory_policy" {
  type        = string
  description = "How Redis will select what to remove when maxmemory is reached. Defaults are shown below."
  default     = "volatile-lru"
}

variable "maxfragmentationmemory_reserved" {
  type        = number
  description = "Value in megabytes reserved to accommodate for memory fragmentation. Defaults are shown below."
  default     = null
}

variable "rdb_backup_enabled" {
  type        = bool
  description = "Is Backup Enabled? Only supported on Premium SKU's."
  default     = true
}

variable "rdb_backup_frequency" {
  type        = number
  description = "The Backup Frequency in Minutes. Only supported on Premium SKU's. Possible values are: 15, 30, 60, 360, 720 and 1440."
  default     = 15
}

variable "rdb_backup_max_snapshot_count" {
  type        = number
  description = "The maximum number of snapshots to create as a backup. Only supported for Premium SKU's."
  default     = 1
}

variable "rdb_storage_connection_string" {
  type        = string
  description = "The Connection String to the Storage Account. Only supported for Premium SKU's."
  default     = "test"
}
