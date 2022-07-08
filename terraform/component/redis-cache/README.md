<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_redis_cache"></a> [redis\_cache](#module\_redis\_cache) | ../../modules/redis-cache | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aof_backup_enabled"></a> [aof\_backup\_enabled](#input\_aof\_backup\_enabled) | Enable or disable AOF persistence for this Redis Cache. | `bool` | `false` | no |
| <a name="input_aof_storage_connection_string_0"></a> [aof\_storage\_connection\_string\_0](#input\_aof\_storage\_connection\_string\_0) | First Storage Account connection string for AOF persistence. | `string` | `""` | no |
| <a name="input_aof_storage_connection_string_1"></a> [aof\_storage\_connection\_string\_1](#input\_aof\_storage\_connection\_string\_1) | Second Storage Account connection string for AOF persistence. | `string` | `""` | no |
| <a name="input_capacity_sku"></a> [capacity\_sku](#input\_capacity\_sku) | Object to containing capacity and sku name for the redis cache.<br>  capacity = The size of the Redis cache to deploy. Valid values for a SKU family of C (Basic/Standard) are 0, 1, 2, 3, 4, 5, 6, and for P (Premium) family are 1, 2, 3, 4.<br>  sku\_name = The SKU of Redis to use. Possible values are Basic, Standard and Premium. | <pre>object({<br>    capacity = number<br>    sku_name = string<br>  })</pre> | n/a | yes |
| <a name="input_enable_authentication"></a> [enable\_authentication](#input\_enable\_authentication) | (Optional) If set to false, the Redis instance will be accessible without authentication. Defaults to true. | `bool` | `true` | no |
| <a name="input_enable_non_ssl_port"></a> [enable\_non\_ssl\_port](#input\_enable\_non\_ssl\_port) | Enable the non-SSL port (6379) - disabled by default. | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment, such as nonprd, prd, tst, acc, dev. | `string` | n/a | yes |
| <a name="input_maxfragmentationmemory_reserved"></a> [maxfragmentationmemory\_reserved](#input\_maxfragmentationmemory\_reserved) | Value in megabytes reserved to accommodate for memory fragmentation. Defaults are shown below. | `number` | `null` | no |
| <a name="input_maxmemory_delta"></a> [maxmemory\_delta](#input\_maxmemory\_delta) | The max-memory delta for this Redis instance. Defaults are shown below. | `number` | `null` | no |
| <a name="input_maxmemory_policy"></a> [maxmemory\_policy](#input\_maxmemory\_policy) | How Redis will select what to remove when maxmemory is reached. Defaults are shown below. | `string` | `"volatile-lru"` | no |
| <a name="input_maxmemory_reserved"></a> [maxmemory\_reserved](#input\_maxmemory\_reserved) | Value in megabytes reserved for non-cache usage e.g. failover. Defaults are shown below. | `number` | `null` | no |
| <a name="input_minimum_tls_version"></a> [minimum\_tls\_version](#input\_minimum\_tls\_version) | The minimum TLS version. Defaults to 1.0. | `string` | `"1.0"` | no |
| <a name="input_name"></a> [name](#input\_name) | A logical name related to the application or service this component is deployed for. This will be used to genrate a valid redis cache name | `string` | n/a | yes |
| <a name="input_private_static_ip_address"></a> [private\_static\_ip\_address](#input\_private\_static\_ip\_address) | (Optional) The Static IP Address to assign to the Redis Cache when hosted inside the Virtual Network. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Whether or not public network access is allowed for this Redis Cache. true means this resource could be accessed by both public and private endpoint. false means only private endpoint access is allowed. | `bool` | `false` | no |
| <a name="input_rdb_backup_enabled"></a> [rdb\_backup\_enabled](#input\_rdb\_backup\_enabled) | Is Backup Enabled? Only supported on Premium SKU's. | `bool` | `true` | no |
| <a name="input_rdb_backup_frequency"></a> [rdb\_backup\_frequency](#input\_rdb\_backup\_frequency) | The Backup Frequency in Minutes. Only supported on Premium SKU's. Possible values are: 15, 30, 60, 360, 720 and 1440. | `number` | `15` | no |
| <a name="input_rdb_backup_max_snapshot_count"></a> [rdb\_backup\_max\_snapshot\_count](#input\_rdb\_backup\_max\_snapshot\_count) | The maximum number of snapshots to create as a backup. Only supported for Premium SKU's. | `number` | `null` | no |
| <a name="input_rdb_storage_connection_string"></a> [rdb\_storage\_connection\_string](#input\_rdb\_storage\_connection\_string) | The Connection String to the Storage Account. Only supported for Premium SKU's. | `string` | `""` | no |
| <a name="input_redis_version"></a> [redis\_version](#input\_redis\_version) | Redis version. Only major version needed. Valid values: 4, 6. | `number` | `4` | no |
| <a name="input_region"></a> [region](#input\_region) | Location where the resorce will be created. | `string` | n/a | yes |
| <a name="input_replicas_per_master"></a> [replicas\_per\_master](#input\_replicas\_per\_master) | Amount of replicas to create per master for this Redis Cache. | `number` | `null` | no |
| <a name="input_replicas_per_primary"></a> [replicas\_per\_primary](#input\_replicas\_per\_primary) | Amount of replicas to create per primary for this Redis Cache. If both replicas\_per\_primary and replicas\_per\_master are set, they need to be equal. | `number` | `null` | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Redis cache Resource group. If empty then a new resource group will be created. | `string` | `""` | no |
| <a name="input_shard_count"></a> [shard\_count](#input\_shard\_count) | Only available when using the Premium SKU. The number of Shards to create on the Redis Cluster. | `number` | `0` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | (Optional) Only available when using the Premium SKU The ID of the Subnet within which the Redis Cache should be deployed. This Subnet must only contain Azure Cache for Redis instances without any other type of resources. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Name-Value pairs tags for a resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hostname"></a> [hostname](#output\_hostname) | The Hostname of the Redis Instance |
| <a name="output_id"></a> [id](#output\_id) | The Route ID |
| <a name="output_name"></a> [name](#output\_name) | Name of the Redis Instance |
| <a name="output_port"></a> [port](#output\_port) | The non-SSL Port of the Redis Instance |
| <a name="output_primary_access_key"></a> [primary\_access\_key](#output\_primary\_access\_key) | The Primary Access Key for the Redis Instance |
| <a name="output_primary_connection_string"></a> [primary\_connection\_string](#output\_primary\_connection\_string) | The primary connection string of the Redis Instance. |
| <a name="output_secondary_access_key"></a> [secondary\_access\_key](#output\_secondary\_access\_key) | The Secondary Access Key for the Redis Instance |
| <a name="output_secondary_connection_string"></a> [secondary\_connection\_string](#output\_secondary\_connection\_string) | The secondary connection string of the Redis Instance. |
| <a name="output_ssl_port"></a> [ssl\_port](#output\_ssl\_port) | The SSL Port of the Redis Instance |
<!-- END_TF_DOCS -->