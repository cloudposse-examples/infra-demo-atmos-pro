variable "name" {
  description = "The name of the load-balancer"
  type        = string
  default     = "load-balancer"
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
  mock_lb_id = "${var.name}-${random_id.id.hex}"
}

output "lb_id" {
  value = local.mock_lb_id
}

output "vpc_id" {
  value = var.vpc_id
}
