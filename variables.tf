variable "grants" {
  description = <<EOT
Map of grants, attributes below
Required:
    - database
    - object_type
    - privileges
    - role
Optional:
    - columns
    - objects
    - schema
    - with_grant_option
EOT

  type = map(object({
    database          = string
    object_type       = string
    privileges        = set(string)
    role              = string
    columns           = optional(set(string))
    objects           = optional(set(string))
    schema            = optional(string)
    with_grant_option = optional(bool)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

