output "nomad_secret_roles_id" {
  description = "Map of id values across all nomad_secret_roles, keyed the same as var.nomad_secret_roles except keys with no id are omitted"
  value       = { for k, v in vault_nomad_secret_role.nomad_secret_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "nomad_secret_roles_backend" {
  description = "Map of backend values across all nomad_secret_roles, keyed the same as var.nomad_secret_roles except keys with no backend are omitted"
  value       = { for k, v in vault_nomad_secret_role.nomad_secret_roles : k => v.backend if v.backend != null && length(v.backend) > 0 }
}
output "nomad_secret_roles_global" {
  description = "Map of global values across all nomad_secret_roles, keyed the same as var.nomad_secret_roles except keys with no global are omitted"
  value       = { for k, v in vault_nomad_secret_role.nomad_secret_roles : k => v.global if v.global != null }
}
output "nomad_secret_roles_namespace" {
  description = "Map of namespace values across all nomad_secret_roles, keyed the same as var.nomad_secret_roles except keys with no namespace are omitted"
  value       = { for k, v in vault_nomad_secret_role.nomad_secret_roles : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "nomad_secret_roles_policies" {
  description = "Map of policies values across all nomad_secret_roles, keyed the same as var.nomad_secret_roles except keys with no policies are omitted"
  value       = { for k, v in vault_nomad_secret_role.nomad_secret_roles : k => v.policies if v.policies != null && length(v.policies) > 0 }
}
output "nomad_secret_roles_role" {
  description = "Map of role values across all nomad_secret_roles, keyed the same as var.nomad_secret_roles except keys with no role are omitted"
  value       = { for k, v in vault_nomad_secret_role.nomad_secret_roles : k => v.role if v.role != null && length(v.role) > 0 }
}
output "nomad_secret_roles_type" {
  description = "Map of type values across all nomad_secret_roles, keyed the same as var.nomad_secret_roles except keys with no type are omitted"
  value       = { for k, v in vault_nomad_secret_role.nomad_secret_roles : k => v.type if v.type != null && length(v.type) > 0 }
}

