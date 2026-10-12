resource "vault_nomad_secret_role" "nomad_secret_roles" {
  for_each = var.nomad_secret_roles

  backend   = each.value.backend
  role      = each.value.role
  global    = each.value.global
  namespace = each.value.namespace
  policies  = each.value.policies
  type      = each.value.type
}

