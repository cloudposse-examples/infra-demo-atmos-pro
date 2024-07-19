variable "name" {
  description = "The name of the VPC"
  type        = string
  default     = "vpc"
}

resource "random_id" "id" {
  byte_length = 8
}

locals {
  mock_vpc_id = "${var.name}-${random_id.id.hex}"
}

output "vpc_id" {
  value = local.mock_vpc_id
}
