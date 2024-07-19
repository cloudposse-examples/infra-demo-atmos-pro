variable "name" {
  description = "The name of the frontend"
  type        = string
  default     = "frontend"
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
