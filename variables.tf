variable "enabled" {
  type        = bool
  default     = true
  description = "Gives ability to enable or disable a module"
}

variable "service_name" {
  description = "Name of service. Make it meaningful"
}

variable "auto_resolve_timeout" {
  description = "Time in seconds that an incident is automatically resolved if left open for that long. Disabled if set to the 'null' string."
  default = 14400
}

variable "escalation_policy" {
  description = "The escalation policy used by this service."
}

variable "acknowledgement_timeout" {
  description = "Time in seconds that an incident changes to the Triggered State after being Acknowledged. Disabled if set to the 'null' string."
  default = 14400
}

variable "alert_creation" {
  description = "Must be one of two values. PagerDuty receives events from your monitoring systems and can then create incidents in different ways. Value 'create_incidents' is default: events will create an incident that cannot be merged. Value 'create_alerts_and_incidents' is the alternative: events will create an alert and then add it to a new incident, these incidents can be merged."
  default = "create_alerts_and_incidents"
}

variable "service_integration_name" {
  description = "The name of the service integration (Datadog or Cloudwatch). This will be used in 'pagerduty_vendor'."
  default     = "Amazon CloudWatch"
}
