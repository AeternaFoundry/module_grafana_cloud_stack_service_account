output "cloud_stack_service_accounts_id" {
  description = "Map of id values across all cloud_stack_service_accounts, keyed the same as var.cloud_stack_service_accounts except keys with no id are omitted"
  value       = { for k, v in grafana_cloud_stack_service_account.cloud_stack_service_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_stack_service_accounts_is_disabled" {
  description = "Map of is_disabled values across all cloud_stack_service_accounts, keyed the same as var.cloud_stack_service_accounts except keys with no is_disabled are omitted"
  value       = { for k, v in grafana_cloud_stack_service_account.cloud_stack_service_accounts : k => v.is_disabled if v.is_disabled != null }
}
output "cloud_stack_service_accounts_name" {
  description = "Map of name values across all cloud_stack_service_accounts, keyed the same as var.cloud_stack_service_accounts except keys with no name are omitted"
  value       = { for k, v in grafana_cloud_stack_service_account.cloud_stack_service_accounts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_stack_service_accounts_role" {
  description = "Map of role values across all cloud_stack_service_accounts, keyed the same as var.cloud_stack_service_accounts except keys with no role are omitted"
  value       = { for k, v in grafana_cloud_stack_service_account.cloud_stack_service_accounts : k => v.role if v.role != null && length(v.role) > 0 }
}
output "cloud_stack_service_accounts_stack_slug" {
  description = "Map of stack_slug values across all cloud_stack_service_accounts, keyed the same as var.cloud_stack_service_accounts except keys with no stack_slug are omitted"
  value       = { for k, v in grafana_cloud_stack_service_account.cloud_stack_service_accounts : k => v.stack_slug if v.stack_slug != null && length(v.stack_slug) > 0 }
}

