variable "name" {
  description = "The name of the load-balancer"
  type        = string
  default     = "load-balancer"
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
