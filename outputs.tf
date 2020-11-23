output "service_id" {
  value = pagerduty_service.pd_service[0].id
}

output "service_integration_id" {
  value = pagerduty_service_integration.pd_service_integration[0].id
}

output "escalation_policy_id" {
  value = pagerduty_escalation_policy.pd_escalation_policy[0].id
}
