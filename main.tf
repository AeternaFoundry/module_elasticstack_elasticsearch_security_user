resource "elasticstack_elasticsearch_security_user" "elasticsearch_security_users" {
  for_each = var.elasticsearch_security_users

  roles               = each.value.roles
  username            = each.value.username
  email               = each.value.email
  enabled             = each.value.enabled
  full_name           = each.value.full_name
  metadata            = each.value.metadata
  password            = each.value.password
  password_hash       = each.value.password_hash
  password_wo         = each.value.password_wo
  password_wo_version = each.value.password_wo_version
  timeouts            = each.value.timeouts

  dynamic "elasticsearch_connection" {
    for_each = each.value.elasticsearch_connection != null ? each.value.elasticsearch_connection : []
    content {
      api_key                  = elasticsearch_connection.value.api_key
      bearer_token             = elasticsearch_connection.value.bearer_token
      ca_data                  = elasticsearch_connection.value.ca_data
      ca_file                  = elasticsearch_connection.value.ca_file
      ca_fingerprint           = elasticsearch_connection.value.ca_fingerprint
      cert_data                = elasticsearch_connection.value.cert_data
      cert_file                = elasticsearch_connection.value.cert_file
      endpoints                = elasticsearch_connection.value.endpoints
      es_client_authentication = elasticsearch_connection.value.es_client_authentication
      headers                  = elasticsearch_connection.value.headers
      insecure                 = elasticsearch_connection.value.insecure
      key_data                 = elasticsearch_connection.value.key_data
      key_file                 = elasticsearch_connection.value.key_file
      password                 = elasticsearch_connection.value.password
      username                 = elasticsearch_connection.value.username
    }
  }
}

