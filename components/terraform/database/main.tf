variable "name" {
  description = "The name of the database"
  type        = string
  default     = "database"
}

variable "vpc_id" {
  description = "Mock input for vpc id"
  type        = string
  default     = ""
}

resource "random_id" "id" {
  byte_length = 8
}

locals {
  mock_database_id = "${var.name}-${random_id.id.hex}"
}

output "database_id" {
  value = local.mock_database_id
}

output "vpc_id" {
  value = var.vpc_id
}
