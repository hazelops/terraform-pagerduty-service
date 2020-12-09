resource "pagerduty_service" "this" {
  count                   = var.enabled ? 1 : 0
  name                    = var.service_name
  auto_resolve_timeout    = var.auto_resolve_timeout
  acknowledgement_timeout = var.acknowledgement_timeout
  escalation_policy       = var.escalation_policy
  alert_creation          = var.alert_creation
}

resource "pagerduty_service_integration" "this" {
  count   = var.enabled ? 1 : 0
  name    = data.pagerduty_vendor.this.name
  vendor  = data.pagerduty_vendor.this.id
  service = pagerduty_service.this[0].id
}
