# This is not a real component. This is created for demo purposes only

variable "vpc_id" {
  description = "VPC ID"
}

variable "lb_id" {
  description = "Load balancer ID"
}

output "vpc_id" {
  description = "Mock VPC ID"
  value       = var.vpc_id
}

output "lb_id" {
  description = "Mock load balancer ID"
  value       = var.lb_id
}

output "cluster_id" {
  description = "Mock cluster ID"
  value       = module.this.id
}
