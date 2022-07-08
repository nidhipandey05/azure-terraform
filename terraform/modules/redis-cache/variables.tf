variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which the Redis Cache should be created."
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists."
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
}

variable "name" {
  type        = string
  description = "Specifies the name of the Redis Cache."
}

variable "capacity" {
  type        = number
  description = "The size of the Redis cache to deploy. Valid values for a SKU family of C (Basic/Standard) are 0, 1, 2, 3, 4, 5, 6, and for P (Premium) family are 1, 2, 3, 4."
}

variable "sku_name" {
  type        = string
  description = "The SKU of Redis to use. Possible values are Basic, Standard and Premium."
  validation {
    condition     = var.sku_name == "Basic" || var.sku_name == "Standard" || var.sku_name == "Premium"
    error_message = "Possible values are Basic, Standard and Premium."
  }
}

variable "enable_non_ssl_port" {
  type        = bool
  description = "Enable the non-SSL port (6379) - disabled by default."
  default     = false
}

variable "minimum_tls_version" {
  type        = string
  description = "The minimum TLS version. Defaults to 1.0."
  default     = "1.0"
}

variable "private_static_ip_address" {
  type        = string
  description = "(Optional) The Static IP Address to assign to the Redis Cache when hosted inside the Virtual Network. Changing this forces a new resource to be created."
  default     = null
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Whether or not public network access is allowed for this Redis Cache. true means this resource could be accessed by both public and private endpoint. false means only private endpoint access is allowed."
  default     = false
}

variable "replicas_per_master" {
  type        = number
  description = "Amount of replicas to create per master for this Redis Cache."
  default     = null
}

variable "replicas_per_primary" {
  type        = number
  description = "Amount of replicas to create per primary for this Redis Cache. If both replicas_per_primary and replicas_per_master are set, they need to be equal."
  default     = null
}

variable "redis_version" {
  type        = number
  description = "Redis version. Only major version needed. Valid values: 4, 6."
  validation {
    condition     = var.redis_version == 4 || var.redis_version == 6
    error_message = "Valid values: 4, 6."
  }
  default = 4
}

variable "shard_count" {
  type        = number
  description = "Only available when using the Premium SKU. The number of Shards to create on the Redis Cluster."
  default     = 0
}

variable "subnet_id" {
  type        = string
  description = "(Optional) Only available when using the Premium SKU The ID of the Subnet within which the Redis Cache should be deployed. This Subnet must only contain Azure Cache for Redis instances without any other type of resources. Changing this forces a new resource to be created."
  default     = null
}

variable "aof_backup_enabled" {
  type        = bool
  description = "Enable or disable AOF persistence for this Redis Cache."
  default     = false
}

variable "aof_storage_connection_string_0" {
  type        = string
  description = "First Storage Account connection string for AOF persistence."
  default     = ""
}

variable "aof_storage_connection_string_1" {
  type        = string
  description = "Second Storage Account connection string for AOF persistence."
  default     = ""
}

variable "enable_authentication" {
  type        = bool
  description = "(Optional) If set to false, the Redis instance will be accessible without authentication. Defaults to true."
  default     = true
}

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
  default     = null
}

variable "rdb_backup_max_snapshot_count" {
  type        = number
  description = "The maximum number of snapshots to create as a backup. Only supported for Premium SKU's."
  default     = null
}

variable "rdb_storage_connection_string" {
  type        = string
  description = "The Connection String to the Storage Account. Only supported for Premium SKU's."
  default     = null
}
