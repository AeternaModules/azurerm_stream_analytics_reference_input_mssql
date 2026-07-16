output "stream_analytics_reference_input_mssqls_id" {
  description = "Map of id values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stream_analytics_reference_input_mssqls_database" {
  description = "Map of database values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.database if v.database != null && length(v.database) > 0 }
}
output "stream_analytics_reference_input_mssqls_delta_snapshot_query" {
  description = "Map of delta_snapshot_query values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.delta_snapshot_query if v.delta_snapshot_query != null && length(v.delta_snapshot_query) > 0 }
}
output "stream_analytics_reference_input_mssqls_full_snapshot_query" {
  description = "Map of full_snapshot_query values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.full_snapshot_query if v.full_snapshot_query != null && length(v.full_snapshot_query) > 0 }
}
output "stream_analytics_reference_input_mssqls_name" {
  description = "Map of name values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.name if v.name != null && length(v.name) > 0 }
}
output "stream_analytics_reference_input_mssqls_password" {
  description = "Map of password values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "stream_analytics_reference_input_mssqls_refresh_interval_duration" {
  description = "Map of refresh_interval_duration values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.refresh_interval_duration if v.refresh_interval_duration != null && length(v.refresh_interval_duration) > 0 }
}
output "stream_analytics_reference_input_mssqls_refresh_type" {
  description = "Map of refresh_type values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.refresh_type if v.refresh_type != null && length(v.refresh_type) > 0 }
}
output "stream_analytics_reference_input_mssqls_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "stream_analytics_reference_input_mssqls_server" {
  description = "Map of server values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.server if v.server != null && length(v.server) > 0 }
}
output "stream_analytics_reference_input_mssqls_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.stream_analytics_job_name if v.stream_analytics_job_name != null && length(v.stream_analytics_job_name) > 0 }
}
output "stream_analytics_reference_input_mssqls_table" {
  description = "Map of table values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.table if v.table != null && length(v.table) > 0 }
}
output "stream_analytics_reference_input_mssqls_username" {
  description = "Map of username values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.username if v.username != null && length(v.username) > 0 }
}

