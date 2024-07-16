resource "random_id" "id" {
  byte_length = 8
}

locals {
  mock_lb_id = "lb-${random_id.id.hex}"
}

output "lb_id" {
  value = local.mock_lb_id
}
