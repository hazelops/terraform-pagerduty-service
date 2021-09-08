output "service_id" {
  value = var.enabled ? pagerduty_service.this[0].id : ""
}

output "service_integration_id" {
  value = var.enabled ? pagerduty_service_integration.this[0].id : ""
}

output "service_integration_key" {
  value = var.enabled ? pagerduty_service_integration.this[0].integration_key : ""
}

output "service_subscription_url" {
  value = var.enabled ? "https://events.pagerduty.com/integration/${pagerduty_service_integration.this[0].integration_key}/enqueue" : ""
}
