output "on_call_escalation_policies_id" {
  description = "Map of id values across all on_call_escalation_policies, keyed the same as var.on_call_escalation_policies except keys with no id are omitted"
  value       = { for k, v in datadog_on_call_escalation_policy.on_call_escalation_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "on_call_escalation_policies_name" {
  description = "Map of name values across all on_call_escalation_policies, keyed the same as var.on_call_escalation_policies except keys with no name are omitted"
  value       = { for k, v in datadog_on_call_escalation_policy.on_call_escalation_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "on_call_escalation_policies_resolve_page_on_policy_end" {
  description = "Map of resolve_page_on_policy_end values across all on_call_escalation_policies, keyed the same as var.on_call_escalation_policies except keys with no resolve_page_on_policy_end are omitted"
  value       = { for k, v in datadog_on_call_escalation_policy.on_call_escalation_policies : k => v.resolve_page_on_policy_end if v.resolve_page_on_policy_end != null }
}
output "on_call_escalation_policies_retries" {
  description = "Map of retries values across all on_call_escalation_policies, keyed the same as var.on_call_escalation_policies except keys with no retries are omitted"
  value       = { for k, v in datadog_on_call_escalation_policy.on_call_escalation_policies : k => v.retries if v.retries != null }
}
output "on_call_escalation_policies_step" {
  description = "Map of step values across all on_call_escalation_policies, keyed the same as var.on_call_escalation_policies except keys with no step are omitted"
  value       = { for k, v in datadog_on_call_escalation_policy.on_call_escalation_policies : k => v.step if v.step != null && length(v.step) > 0 }
}
output "on_call_escalation_policies_teams" {
  description = "Map of teams values across all on_call_escalation_policies, keyed the same as var.on_call_escalation_policies except keys with no teams are omitted"
  value       = { for k, v in datadog_on_call_escalation_policy.on_call_escalation_policies : k => v.teams if v.teams != null && length(v.teams) > 0 }
}

