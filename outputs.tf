output "appsync_datasources_id" {
  description = "Map of id values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appsync_datasources_api_id" {
  description = "Map of api_id values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => v.api_id if v.api_id != null && length(v.api_id) > 0 }
}
output "appsync_datasources_arn" {
  description = "Map of arn values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appsync_datasources_description" {
  description = "Map of description values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => v.description if v.description != null && length(v.description) > 0 }
}
output "appsync_datasources_dynamodb_config" {
  description = "Map of dynamodb_config values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => one(v.dynamodb_config) if v.dynamodb_config != null && length(v.dynamodb_config) > 0 }
}
output "appsync_datasources_elasticsearch_config" {
  description = "Map of elasticsearch_config values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => one(v.elasticsearch_config) if v.elasticsearch_config != null && length(v.elasticsearch_config) > 0 }
}
output "appsync_datasources_event_bridge_config" {
  description = "Map of event_bridge_config values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => one(v.event_bridge_config) if v.event_bridge_config != null && length(v.event_bridge_config) > 0 }
}
output "appsync_datasources_http_config" {
  description = "Map of http_config values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => one(v.http_config) if v.http_config != null && length(v.http_config) > 0 }
}
output "appsync_datasources_lambda_config" {
  description = "Map of lambda_config values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => one(v.lambda_config) if v.lambda_config != null && length(v.lambda_config) > 0 }
}
output "appsync_datasources_name" {
  description = "Map of name values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appsync_datasources_opensearchservice_config" {
  description = "Map of opensearchservice_config values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => one(v.opensearchservice_config) if v.opensearchservice_config != null && length(v.opensearchservice_config) > 0 }
}
output "appsync_datasources_region" {
  description = "Map of region values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appsync_datasources_relational_database_config" {
  description = "Map of relational_database_config values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => one(v.relational_database_config) if v.relational_database_config != null && length(v.relational_database_config) > 0 }
}
output "appsync_datasources_service_role_arn" {
  description = "Map of service_role_arn values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => v.service_role_arn if v.service_role_arn != null && length(v.service_role_arn) > 0 }
}
output "appsync_datasources_type" {
  description = "Map of type values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = { for k, v in aws_appsync_datasource.appsync_datasources : k => v.type if v.type != null && length(v.type) > 0 }
}

