resource "random_password" "auth_token" {
  length  = 16
  special = false
}

resource "aws_elasticache_replication_group" "main" {
  automatic_failover_enabled = true
  replication_group_id       = var.prefix
  description                = var.prefix
  node_type                  = var.node_type
  num_cache_clusters         = var.num_cache_clusters
  parameter_group_name       = var.parameter_group_name
  port                       = var.port
  subnet_group_name          = var.subnet_group_name
  security_group_ids         = var.security_group_ids

  transit_encryption_enabled = true
  auth_token                 = random_password.auth_token.result
}
