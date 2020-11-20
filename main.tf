resource "pagerduty_service" "pd_service" {
  count                   = var.enabled ? 1 : 0
  name                    = var.service_name
  auto_resolve_timeout    = var.auto_resolve_timeout
  acknowledgement_timeout = var.acknowledgement_timeout
  escalation_policy       = var.escalation_policy
  alert_creation          = var.alert_creation
}

resource "pagerduty_service_integration" "pd_service_integration" {
  count   = var.enabled ? 1 : 0
  name    = data.pagerduty_vendor.pd_vendor.name
  vendor  = data.pagerduty_vendor.pd_vendor.id
  service = pagerduty_service.pd_service[0].id
}
