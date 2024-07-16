variable "name" {
  description = "The name of the cache"
  type        = string
  default     = "cache"
}

resource "random_id" "id" {
  byte_length = 8
}

locals {
  mock_cache_id = "${var.name}-${random_id.id.hex}"
}

output "cache_id" {
  value = local.mock_cache_id
}
