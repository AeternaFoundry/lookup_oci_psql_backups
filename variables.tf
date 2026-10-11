variable "psql_backups_lookup" {
  description = <<EOT
Map of psql_backups_lookup, attributes below
Optional:
    - backup_id
    - backup_source_type
    - compartment_id
    - display_name
    - state
    - time_ended
    - time_started
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    backup_id          = optional(string)
    backup_source_type = optional(string)
    compartment_id     = optional(string)
    display_name       = optional(string)
    state              = optional(string)
    time_ended         = optional(string)
    time_started       = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

