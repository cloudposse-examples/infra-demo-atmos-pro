variable "name" {
  description = "The name of the cluster"
  type        = string
  default     = "cluster"
}

variable "vpc_id" {
  description = "Mock input for vpc id"
  type        = string
  default     = ""
}

variable "lb_id" {
  description = "Mock input for lb id"
  type        = string
  default     = ""
}

resource "random_id" "id" {
  byte_length = 8
}

locals {
  mock_cluster_id = "${var.name}-${random_id.id.hex}"
}

output "cluster_id" {
  value = local.mock_cluster_id
}

output "vpc_id" {
  value = var.vpc_id
}

output "lb_id" {
  value = var.lb_id
}
