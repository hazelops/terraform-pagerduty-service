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

resource "pagerduty_escalation_policy" "pd_escalation_policy" {
  count     = var.enabled ? 1 : 0
  name      = var.escalation_policy_name
  num_loops = var.num_loops
  teams     = [var.teams]

  rule {
    escalation_delay_in_minutes = var.escalation_delay

    target {
      type = "schedule_reference"
      id   = var.target_schedule_01
    }
  }

  rule {
    escalation_delay_in_minutes = var.escalation_delay

    target {
      type = "schedule_reference"
      id   = var.target_schedule_02
    }
  }
}
