<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.1.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_redis_cache"></a> [redis\_cache](#module\_redis\_cache) | ../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_maxfragmentationmemory_reserved"></a> [maxfragmentationmemory\_reserved](#input\_maxfragmentationmemory\_reserved) | Value in megabytes reserved to accommodate for memory fragmentation. Defaults are shown below. | `number` | `null` | no |
| <a name="input_maxmemory_delta"></a> [maxmemory\_delta](#input\_maxmemory\_delta) | The max-memory delta for this Redis instance. Defaults are shown below. | `number` | `null` | no |
| <a name="input_maxmemory_policy"></a> [maxmemory\_policy](#input\_maxmemory\_policy) | How Redis will select what to remove when maxmemory is reached. Defaults are shown below. | `string` | `"volatile-lru"` | no |
| <a name="input_maxmemory_reserved"></a> [maxmemory\_reserved](#input\_maxmemory\_reserved) | Value in megabytes reserved for non-cache usage e.g. failover. Defaults are shown below. | `number` | `null` | no |
| <a name="input_rdb_backup_enabled"></a> [rdb\_backup\_enabled](#input\_rdb\_backup\_enabled) | Is Backup Enabled? Only supported on Premium SKU's. | `bool` | `true` | no |
| <a name="input_rdb_backup_frequency"></a> [rdb\_backup\_frequency](#input\_rdb\_backup\_frequency) | The Backup Frequency in Minutes. Only supported on Premium SKU's. Possible values are: 15, 30, 60, 360, 720 and 1440. | `number` | `15` | no |
| <a name="input_rdb_backup_max_snapshot_count"></a> [rdb\_backup\_max\_snapshot\_count](#input\_rdb\_backup\_max\_snapshot\_count) | The maximum number of snapshots to create as a backup. Only supported for Premium SKU's. | `number` | `1` | no |
| <a name="input_rdb_storage_connection_string"></a> [rdb\_storage\_connection\_string](#input\_rdb\_storage\_connection\_string) | The Connection String to the Storage Account. Only supported for Premium SKU's. | `string` | `"test"` | no |

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