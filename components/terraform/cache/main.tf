resource "random_id" "id" {
  byte_length = 8
}

locals {
  mock_cache_id = "cache-${random_id.id.hex}"
}

output "cache_id" {
  value = local.mock_cache_id
}
