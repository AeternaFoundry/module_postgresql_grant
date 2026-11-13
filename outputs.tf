output "grants_id" {
  description = "Map of id values across all grants, keyed the same as var.grants"
  value       = { for k, v in postgresql_grant.grants : k => v.id }
}
output "grants_columns" {
  description = "Map of columns values across all grants, keyed the same as var.grants"
  value       = { for k, v in postgresql_grant.grants : k => v.columns }
}
output "grants_database" {
  description = "Map of database values across all grants, keyed the same as var.grants"
  value       = { for k, v in postgresql_grant.grants : k => v.database }
}
output "grants_object_type" {
  description = "Map of object_type values across all grants, keyed the same as var.grants"
  value       = { for k, v in postgresql_grant.grants : k => v.object_type }
}
output "grants_objects" {
  description = "Map of objects values across all grants, keyed the same as var.grants"
  value       = { for k, v in postgresql_grant.grants : k => v.objects }
}
output "grants_privileges" {
  description = "Map of privileges values across all grants, keyed the same as var.grants"
  value       = { for k, v in postgresql_grant.grants : k => v.privileges }
}
output "grants_role" {
  description = "Map of role values across all grants, keyed the same as var.grants"
  value       = { for k, v in postgresql_grant.grants : k => v.role }
}
output "grants_schema" {
  description = "Map of schema values across all grants, keyed the same as var.grants"
  value       = { for k, v in postgresql_grant.grants : k => v.schema }
}
output "grants_with_grant_option" {
  description = "Map of with_grant_option values across all grants, keyed the same as var.grants"
  value       = { for k, v in postgresql_grant.grants : k => v.with_grant_option }
}

