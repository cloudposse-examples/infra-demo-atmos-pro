variable "name" {
  description = "The name of the cluster"
  type        = string
  default     = "cluster"
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
