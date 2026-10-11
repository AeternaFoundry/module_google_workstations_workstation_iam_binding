variable "workstations_workstation_iam_bindings" {
  description = <<EOT
Map of workstations_workstation_iam_bindings, attributes below
Required:
    - members
    - role
    - workstation_cluster_id
    - workstation_config_id
    - workstation_id
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members                = set(string)
    role                   = string
    workstation_cluster_id = string
    workstation_config_id  = string
    workstation_id         = string
    location               = optional(string)
    project                = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

