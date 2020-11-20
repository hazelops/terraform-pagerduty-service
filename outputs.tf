output "service_id" {
  value = pagerduty_service.pd_service[0].id
}

output "service_integration_id" {
  value = pagerduty_service_integration.pd_service_integration[0].id
}

