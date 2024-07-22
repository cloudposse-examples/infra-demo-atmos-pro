variable "name" {
  description = "The name of the frontend"
  type        = string
  default     = "frontend"
}

variable "api_id" {
  description = "Mock input for api id"
  type        = string
  default     = ""
}

variable "cache_id" {
  description = "Mock input for cache id"
  type        = string
  default     = ""
}

resource "random_id" "id" {
  byte_length = 8
}

locals {
  mock_frontend_id = "${var.name}-${random_id.id.hex}"
}

output "frontend_id" {
  value = local.mock_frontend_id
}

output "api_id" {
  value = var.api_id
}

output "cache_id" {
  value = var.cache_id
}
