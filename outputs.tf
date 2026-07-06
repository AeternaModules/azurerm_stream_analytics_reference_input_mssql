output "stream_analytics_reference_input_mssqls" {
  description = "All stream_analytics_reference_input_mssql resources"
  value       = azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls
  sensitive   = true
}
output "stream_analytics_reference_input_mssqls_database" {
  description = "List of database values across all stream_analytics_reference_input_mssqls"
  value       = [for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : v.database]
}
output "stream_analytics_reference_input_mssqls_delta_snapshot_query" {
  description = "List of delta_snapshot_query values across all stream_analytics_reference_input_mssqls"
  value       = [for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : v.delta_snapshot_query]
}
output "stream_analytics_reference_input_mssqls_full_snapshot_query" {
  description = "List of full_snapshot_query values across all stream_analytics_reference_input_mssqls"
  value       = [for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : v.full_snapshot_query]
}
output "stream_analytics_reference_input_mssqls_name" {
  description = "List of name values across all stream_analytics_reference_input_mssqls"
  value       = [for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : v.name]
}
output "stream_analytics_reference_input_mssqls_password" {
  description = "List of password values across all stream_analytics_reference_input_mssqls"
  value       = [for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : v.password]
  sensitive   = true
}
output "stream_analytics_reference_input_mssqls_refresh_interval_duration" {
  description = "List of refresh_interval_duration values across all stream_analytics_reference_input_mssqls"
  value       = [for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : v.refresh_interval_duration]
}
output "stream_analytics_reference_input_mssqls_refresh_type" {
  description = "List of refresh_type values across all stream_analytics_reference_input_mssqls"
  value       = [for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : v.refresh_type]
}
output "stream_analytics_reference_input_mssqls_resource_group_name" {
  description = "List of resource_group_name values across all stream_analytics_reference_input_mssqls"
  value       = [for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : v.resource_group_name]
}
output "stream_analytics_reference_input_mssqls_server" {
  description = "List of server values across all stream_analytics_reference_input_mssqls"
  value       = [for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : v.server]
}
output "stream_analytics_reference_input_mssqls_stream_analytics_job_name" {
  description = "List of stream_analytics_job_name values across all stream_analytics_reference_input_mssqls"
  value       = [for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : v.stream_analytics_job_name]
}
output "stream_analytics_reference_input_mssqls_table" {
  description = "List of table values across all stream_analytics_reference_input_mssqls"
  value       = [for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : v.table]
}
output "stream_analytics_reference_input_mssqls_username" {
  description = "List of username values across all stream_analytics_reference_input_mssqls"
  value       = [for k, v in azurerm_stream_analytics_reference_input_mssql.stream_analytics_reference_input_mssqls : v.username]
}

