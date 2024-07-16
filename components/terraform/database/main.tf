resource "random_id" "id" {
  byte_length = 8
}

locals {
  mock_database_id = "database-${random_id.id.hex}"
}

output "database_id" {
  value = local.mock_database_id
}
