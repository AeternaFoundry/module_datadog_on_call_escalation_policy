variable "on_call_escalation_policies" {
  description = <<EOT
Map of on_call_escalation_policies, attributes below
Required:
    - name
Optional:
    - resolve_page_on_policy_end
    - retries
    - teams
    - step (block):
        - assignment (optional)
        - escalate_after_seconds (required)
        - target (optional, block):
            - position (optional)
            - schedule (optional)
            - team (optional)
            - user (optional)
EOT

  type = map(object({
    name                       = string
    resolve_page_on_policy_end = optional(bool)
    retries                    = optional(number)
    teams                      = optional(list(string))
    step = optional(list(object({
      assignment             = optional(string)
      escalate_after_seconds = number
      target = optional(list(object({
        position = optional(string)
        schedule = optional(string)
        team     = optional(string)
        user     = optional(string)
      })))
    })))
  }))
}

