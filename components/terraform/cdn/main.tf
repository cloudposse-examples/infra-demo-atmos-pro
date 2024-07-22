variable "name" {
  description = "The name of the CDN"
  type        = string
  default     = "cdn"
}

variable "storage_id" {
  description = "Mock input for storage id"
  type        = string
  default     = ""
}

variable "frontend_id" {
  description = "Mock input for frontend id"
  type        = string
  default     = ""
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

output "storage_id" {
  value = var.storage_id
}

output "frontend_id" {
  value = var.frontend_id
}
