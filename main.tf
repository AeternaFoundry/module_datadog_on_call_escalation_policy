resource "datadog_on_call_escalation_policy" "on_call_escalation_policies" {
  for_each = var.on_call_escalation_policies

  name                       = each.value.name
  resolve_page_on_policy_end = each.value.resolve_page_on_policy_end
  retries                    = each.value.retries
  teams                      = each.value.teams

  dynamic "step" {
    for_each = each.value.step != null ? each.value.step : []
    content {
      assignment             = step.value.assignment
      escalate_after_seconds = step.value.escalate_after_seconds
      dynamic "target" {
        for_each = step.value.target != null ? step.value.target : []
        content {
          position = target.value.position
          schedule = target.value.schedule
          team     = target.value.team
          user     = target.value.user
        }
      }
    }
  }
}

