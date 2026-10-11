resource "grafana_cloud_stack_service_account" "cloud_stack_service_accounts" {
  for_each = var.cloud_stack_service_accounts

  name        = each.value.name
  role        = each.value.role
  stack_slug  = each.value.stack_slug
  is_disabled = each.value.is_disabled
}

