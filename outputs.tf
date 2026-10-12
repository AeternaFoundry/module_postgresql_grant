output "grants_id" {
  description = "Map of id values across all grants, keyed the same as var.grants except keys with no id are omitted"
  value       = { for k, v in postgresql_grant.grants : k => v.id if v.id != null && length(v.id) > 0 }
}
output "grants_columns" {
  description = "Map of columns values across all grants, keyed the same as var.grants except keys with no columns are omitted"
  value       = { for k, v in postgresql_grant.grants : k => v.columns if v.columns != null && length(v.columns) > 0 }
}
output "grants_database" {
  description = "Map of database values across all grants, keyed the same as var.grants except keys with no database are omitted"
  value       = { for k, v in postgresql_grant.grants : k => v.database if v.database != null && length(v.database) > 0 }
}
output "grants_object_type" {
  description = "Map of object_type values across all grants, keyed the same as var.grants except keys with no object_type are omitted"
  value       = { for k, v in postgresql_grant.grants : k => v.object_type if v.object_type != null && length(v.object_type) > 0 }
}
output "grants_objects" {
  description = "Map of objects values across all grants, keyed the same as var.grants except keys with no objects are omitted"
  value       = { for k, v in postgresql_grant.grants : k => v.objects if v.objects != null && length(v.objects) > 0 }
}
output "grants_privileges" {
  description = "Map of privileges values across all grants, keyed the same as var.grants except keys with no privileges are omitted"
  value       = { for k, v in postgresql_grant.grants : k => v.privileges if v.privileges != null && length(v.privileges) > 0 }
}
output "grants_role" {
  description = "Map of role values across all grants, keyed the same as var.grants except keys with no role are omitted"
  value       = { for k, v in postgresql_grant.grants : k => v.role if v.role != null && length(v.role) > 0 }
}
output "grants_schema" {
  description = "Map of schema values across all grants, keyed the same as var.grants except keys with no schema are omitted"
  value       = { for k, v in postgresql_grant.grants : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "grants_with_grant_option" {
  description = "Map of with_grant_option values across all grants, keyed the same as var.grants except keys with no with_grant_option are omitted"
  value       = { for k, v in postgresql_grant.grants : k => v.with_grant_option if v.with_grant_option != null }
}

