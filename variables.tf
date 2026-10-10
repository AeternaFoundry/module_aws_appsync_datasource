variable "appsync_datasources" {
  description = <<EOT
Map of appsync_datasources, attributes below
Required:
    - api_id
    - name
    - type
Optional:
    - description
    - region
    - service_role_arn
    - dynamodb_config (block):
        - delta_sync_config (optional, block):
            - base_table_ttl (optional)
            - delta_sync_table_name (required)
            - delta_sync_table_ttl (optional)
        - region (optional)
        - table_name (required)
        - use_caller_credentials (optional)
        - versioned (optional)
    - elasticsearch_config (block):
        - endpoint (required)
        - region (optional)
    - event_bridge_config (block):
        - event_bus_arn (required)
    - http_config (block):
        - authorization_config (optional, block):
            - authorization_type (optional)
            - aws_iam_config (optional, block):
                - signing_region (optional)
                - signing_service_name (optional)
        - endpoint (required)
    - lambda_config (block):
        - function_arn (required)
    - opensearchservice_config (block):
        - endpoint (required)
        - region (optional)
    - relational_database_config (block):
        - http_endpoint_config (optional, block):
            - aws_secret_store_arn (required)
            - database_name (optional)
            - db_cluster_identifier (required)
            - region (optional)
            - schema (optional)
        - source_type (optional)
EOT

  type = map(object({
    api_id           = string
    name             = string
    type             = string
    description      = optional(string)
    region           = optional(string)
    service_role_arn = optional(string)
    dynamodb_config = optional(object({
      delta_sync_config = optional(object({
        base_table_ttl        = optional(number)
        delta_sync_table_name = string
        delta_sync_table_ttl  = optional(number)
      }))
      region                 = optional(string)
      table_name             = string
      use_caller_credentials = optional(bool)
      versioned              = optional(bool)
    }))
    elasticsearch_config = optional(object({
      endpoint = string
      region   = optional(string)
    }))
    event_bridge_config = optional(object({
      event_bus_arn = string
    }))
    http_config = optional(object({
      authorization_config = optional(object({
        authorization_type = optional(string)
        aws_iam_config = optional(object({
          signing_region       = optional(string)
          signing_service_name = optional(string)
        }))
      }))
      endpoint = string
    }))
    lambda_config = optional(object({
      function_arn = string
    }))
    opensearchservice_config = optional(object({
      endpoint = string
      region   = optional(string)
    }))
    relational_database_config = optional(object({
      http_endpoint_config = optional(object({
        aws_secret_store_arn  = string
        database_name         = optional(string)
        db_cluster_identifier = string
        region                = optional(string)
        schema                = optional(string)
      }))
      source_type = optional(string)
    }))
  }))
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

