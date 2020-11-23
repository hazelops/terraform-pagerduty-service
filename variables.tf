variable "pagerduty_token" {
  default = "YOUR_API_KEY_HERE"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Gives ability to enable or disable a module"
}

variable "service_name" {
  description = "Name of service. Make it meaningful"
}

variable "auto_resolve_timeout" {
  default = 14400
}

variable "escalation_policy" {}

variable "acknowledgement_timeout" {
  default = 14400
}

variable "alert_creation" {
  default = "create_alerts_and_incidents"
}

variable "service_integration_name" {
  description = "Name of service integration. Make it meaningful"
  default     = "Cloudwatch"
}

variable "escalation_policy_name" {
  description = "Name of escalation policy. Make it meaningful"
}

variable "num_loops" {
  default = 2
}

variable "teams" {}

variable "escalation_delay" {
  default = 15
}

variable "target_schedule_01" {}

variable "target_schedule_02" {}

