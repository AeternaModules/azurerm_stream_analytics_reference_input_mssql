output "stream_analytics_reference_input_mssqls_id" {
  description = "Map of id values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.id }
}
output "stream_analytics_reference_input_mssqls_database" {
  description = "Map of database values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.database }
}
output "stream_analytics_reference_input_mssqls_delta_snapshot_query" {
  description = "Map of delta_snapshot_query values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.delta_snapshot_query }
}
output "stream_analytics_reference_input_mssqls_full_snapshot_query" {
  description = "Map of full_snapshot_query values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.full_snapshot_query }
}
output "stream_analytics_reference_input_mssqls_name" {
  description = "Map of name values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.name }
}
output "stream_analytics_reference_input_mssqls_password" {
  description = "Map of password values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.password }
  sensitive   = true
}
output "stream_analytics_reference_input_mssqls_refresh_interval_duration" {
  description = "Map of refresh_interval_duration values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.refresh_interval_duration }
}
output "stream_analytics_reference_input_mssqls_refresh_type" {
  description = "Map of refresh_type values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.refresh_type }
}
output "stream_analytics_reference_input_mssqls_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.resource_group_name }
}
output "stream_analytics_reference_input_mssqls_server" {
  description = "Map of server values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.server }
}
output "stream_analytics_reference_input_mssqls_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.stream_analytics_job_name }
}
output "stream_analytics_reference_input_mssqls_table" {
  description = "Map of table values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.table }
}
output "stream_analytics_reference_input_mssqls_username" {
  description = "Map of username values across all stream_analytics_reference_input_mssqls, keyed the same as var.stream_analytics_reference_input_mssqls"
  value       = { for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : k => v.username }
}

