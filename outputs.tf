output "elasticsearch_security_users_id" {
  description = "Map of id values across all elasticsearch_security_users, keyed the same as var.elasticsearch_security_users except keys with no id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_user.elasticsearch_security_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticsearch_security_users_elasticsearch_connection" {
  description = "Map of elasticsearch_connection values across all elasticsearch_security_users, keyed the same as var.elasticsearch_security_users except keys with no elasticsearch_connection are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_user.elasticsearch_security_users : k => v.elasticsearch_connection if v.elasticsearch_connection != null && length(v.elasticsearch_connection) > 0 }
  sensitive   = true
}
output "elasticsearch_security_users_email" {
  description = "Map of email values across all elasticsearch_security_users, keyed the same as var.elasticsearch_security_users except keys with no email are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_user.elasticsearch_security_users : k => v.email if v.email != null && length(v.email) > 0 }
}
output "elasticsearch_security_users_enabled" {
  description = "Map of enabled values across all elasticsearch_security_users, keyed the same as var.elasticsearch_security_users except keys with no enabled are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_user.elasticsearch_security_users : k => v.enabled if v.enabled != null }
}
output "elasticsearch_security_users_full_name" {
  description = "Map of full_name values across all elasticsearch_security_users, keyed the same as var.elasticsearch_security_users except keys with no full_name are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_user.elasticsearch_security_users : k => v.full_name if v.full_name != null && length(v.full_name) > 0 }
}
output "elasticsearch_security_users_metadata" {
  description = "Map of metadata values across all elasticsearch_security_users, keyed the same as var.elasticsearch_security_users except keys with no metadata are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_user.elasticsearch_security_users : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "elasticsearch_security_users_password" {
  description = "Map of password values across all elasticsearch_security_users, keyed the same as var.elasticsearch_security_users except keys with no password are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_user.elasticsearch_security_users : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "elasticsearch_security_users_password_hash" {
  description = "Map of password_hash values across all elasticsearch_security_users, keyed the same as var.elasticsearch_security_users except keys with no password_hash are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_user.elasticsearch_security_users : k => v.password_hash if v.password_hash != null && length(v.password_hash) > 0 }
  sensitive   = true
}
output "elasticsearch_security_users_password_wo_version" {
  description = "Map of password_wo_version values across all elasticsearch_security_users, keyed the same as var.elasticsearch_security_users except keys with no password_wo_version are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_user.elasticsearch_security_users : k => v.password_wo_version if v.password_wo_version != null && length(v.password_wo_version) > 0 }
}
output "elasticsearch_security_users_roles" {
  description = "Map of roles values across all elasticsearch_security_users, keyed the same as var.elasticsearch_security_users except keys with no roles are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_user.elasticsearch_security_users : k => v.roles if v.roles != null && length(v.roles) > 0 }
}
output "elasticsearch_security_users_username" {
  description = "Map of username values across all elasticsearch_security_users, keyed the same as var.elasticsearch_security_users except keys with no username are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_user.elasticsearch_security_users : k => v.username if v.username != null && length(v.username) > 0 }
}

