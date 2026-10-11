output "psql_backups_lookup_id" {
  description = "Map of id values across all psql_backups_lookup, keyed the same as var.psql_backups_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_psql_backups.psql_backups_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "psql_backups_lookup_backup_collection" {
  description = "Map of backup_collection values across all psql_backups_lookup, keyed the same as var.psql_backups_lookup except keys with no backup_collection are omitted"
  value       = { for k, v in data.oci_psql_backups.psql_backups_lookup : k => v.backup_collection if v.backup_collection != null && length(v.backup_collection) > 0 }
}
output "psql_backups_lookup_backup_id" {
  description = "Map of backup_id values across all psql_backups_lookup, keyed the same as var.psql_backups_lookup except keys with no backup_id are omitted"
  value       = { for k, v in data.oci_psql_backups.psql_backups_lookup : k => v.backup_id if v.backup_id != null && length(v.backup_id) > 0 }
}
output "psql_backups_lookup_backup_source_type" {
  description = "Map of backup_source_type values across all psql_backups_lookup, keyed the same as var.psql_backups_lookup except keys with no backup_source_type are omitted"
  value       = { for k, v in data.oci_psql_backups.psql_backups_lookup : k => v.backup_source_type if v.backup_source_type != null && length(v.backup_source_type) > 0 }
}
output "psql_backups_lookup_compartment_id" {
  description = "Map of compartment_id values across all psql_backups_lookup, keyed the same as var.psql_backups_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_psql_backups.psql_backups_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "psql_backups_lookup_display_name" {
  description = "Map of display_name values across all psql_backups_lookup, keyed the same as var.psql_backups_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_psql_backups.psql_backups_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "psql_backups_lookup_filter" {
  description = "Map of filter values across all psql_backups_lookup, keyed the same as var.psql_backups_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_psql_backups.psql_backups_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "psql_backups_lookup_state" {
  description = "Map of state values across all psql_backups_lookup, keyed the same as var.psql_backups_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_psql_backups.psql_backups_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "psql_backups_lookup_time_ended" {
  description = "Map of time_ended values across all psql_backups_lookup, keyed the same as var.psql_backups_lookup except keys with no time_ended are omitted"
  value       = { for k, v in data.oci_psql_backups.psql_backups_lookup : k => v.time_ended if v.time_ended != null && length(v.time_ended) > 0 }
}
output "psql_backups_lookup_time_started" {
  description = "Map of time_started values across all psql_backups_lookup, keyed the same as var.psql_backups_lookup except keys with no time_started are omitted"
  value       = { for k, v in data.oci_psql_backups.psql_backups_lookup : k => v.time_started if v.time_started != null && length(v.time_started) > 0 }
}

