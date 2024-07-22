variable "name" {
  description = "The name of the API"
  type        = string
  default     = "api"
}

variable "database_id" {
  description = "Mock database ID"
  type        = string
  default     = ""
}

variable "cluster_id" {
  description = "Mock cluster ID"
  type        = string
  default     = ""
}

resource "random_id" "id" {
  byte_length = 8
}

locals {
  mock_api_id = "${var.name}-${random_id.id.hex}"
}

output "api_id" {
  value = local.mock_api_id
}

output "database_id" {
  value = var.database_id
}

output "cluster_id" {
  value = var.cluster_id
}
