variable "name" {
  description = "The name of the CDN"
  type        = string
  default     = "cdn"
}

resource "random_id" "id" {
  byte_length = 8
}

locals {
  mock_cdn_id = "${var.name}-${random_id.id.hex}"
}

output "cdn_id" {
  value = local.mock_cdn_id
}
