resource "random_id" "id" {
  byte_length = 8
}

locals {
  mock_cluster_id = "cluster-${random_id.id.hex}"
}

output "cluster_id" {
  value = local.mock_cluster_id
}
