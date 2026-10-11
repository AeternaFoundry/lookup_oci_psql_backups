data "oci_psql_backups" "psql_backups_lookup" {
  for_each = var.psql_backups_lookup

  backup_id          = each.value.backup_id
  backup_source_type = each.value.backup_source_type
  compartment_id     = each.value.compartment_id
  display_name       = each.value.display_name
  state              = each.value.state
  time_ended         = each.value.time_ended
  time_started       = each.value.time_started

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

