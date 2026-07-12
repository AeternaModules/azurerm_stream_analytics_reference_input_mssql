variable "stream_analytics_reference_input_mssqls" {
  description = <<EOT
Map of stream_analytics_reference_input_mssqls, attributes below
Required:
    - database
    - full_snapshot_query
    - name
    - password
    - password_key_vault_id (alternative to password - read from Key Vault instead)
    - password_key_vault_secret_name (alternative to password - read from Key Vault instead)
    - refresh_type
    - resource_group_name
    - server
    - stream_analytics_job_name
    - username
Optional:
    - delta_snapshot_query
    - refresh_interval_duration
    - table
EOT

  type = map(object({
    database                       = string
    full_snapshot_query            = string
    name                           = string
    password                       = string
    password_key_vault_id          = optional(string)
    password_key_vault_secret_name = optional(string)
    refresh_type                   = string
    resource_group_name            = string
    server                         = string
    stream_analytics_job_name      = string
    username                       = string
    delta_snapshot_query           = optional(string)
    refresh_interval_duration      = optional(string)
    table                          = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_mssqls : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_mssqls : (
        length(v.stream_analytics_job_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_mssqls : (
        length(v.server) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_mssqls : (
        length(v.database) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_mssqls : (
        length(v.username) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_mssqls : (
        length(v.password) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_mssqls : (
        contains(["Static", "RefreshPeriodicallyWithFull", "RefreshPeriodicallyWithDelta"], v.refresh_type)
      )
    ])
    error_message = "must be one of: Static, RefreshPeriodicallyWithFull, RefreshPeriodicallyWithDelta"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_mssqls : (
        length(v.full_snapshot_query) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_mssqls : (
        v.delta_snapshot_query == null || (length(v.delta_snapshot_query) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_mssqls : (
        v.table == null || (length(v.table) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_stream_analytics_reference_input_mssql's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: refresh_interval_duration
  #   source:    [from validate.BatchMaxWaitTime] !ok
  # path: refresh_interval_duration
  #   condition: length(value) > 0
  #   message:   [from validate.BatchMaxWaitTime: invalid when value == ""]
  #   source:    [from validate.BatchMaxWaitTime: invalid when value == ""]
  # path: refresh_interval_duration
  #   source:    [from validate.BatchMaxWaitTime] !matched
}

