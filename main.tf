resource "postgresql_grant" "grants" {
  for_each = var.grants

  database          = each.value.database
  object_type       = each.value.object_type
  privileges        = each.value.privileges
  role              = each.value.role
  columns           = each.value.columns
  objects           = each.value.objects
  schema            = each.value.schema
  with_grant_option = each.value.with_grant_option
}

