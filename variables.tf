variable "nomad_secret_roles" {
  description = <<EOT
Map of nomad_secret_roles, attributes below
Required:
    - backend
    - role
Optional:
    - global
    - namespace
    - policies
    - type
EOT

  type = map(object({
    backend   = string
    role      = string
    global    = optional(bool)
    namespace = optional(string)
    policies  = optional(list(string))
    type      = optional(string)
  }))
}

