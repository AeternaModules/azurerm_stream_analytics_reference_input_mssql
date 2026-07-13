variable "stream_analytics_reference_input_mssqls" {
  description = <<EOT
Map of stream_analytics_reference_input_mssqls, attributes below
Required:
    - database
    - full_snapshot_query
    - name
    - password
    - password_key_vault_id (optional, alternative to password)
    - password_key_vault_secret_name (optional, alternative to password)
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
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_mssqls : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_mssqls : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
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
        v.refresh_interval_duration == null || (length(v.refresh_interval_duration) > 0)
      )
    ])
    error_message = "[from validate.BatchMaxWaitTime: invalid when value == \"\"]"
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
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

