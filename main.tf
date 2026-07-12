data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.stream_analytics_reference_input_mssqls : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
resource "azurerm_stream_analytics_reference_input_mssql" "stream_analytics_reference_input_mssqls" {
  for_each = var.stream_analytics_reference_input_mssqls

  database                  = each.value.database
  full_snapshot_query       = each.value.full_snapshot_query
  name                      = each.value.name
  password                  = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)
  refresh_type              = each.value.refresh_type
  resource_group_name       = each.value.resource_group_name
  server                    = each.value.server
  stream_analytics_job_name = each.value.stream_analytics_job_name
  username                  = each.value.username
  delta_snapshot_query      = each.value.delta_snapshot_query
  refresh_interval_duration = each.value.refresh_interval_duration
  table                     = each.value.table
}

