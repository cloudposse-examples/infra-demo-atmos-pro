# This is not a real component. This is created for demo purposes only

module "network" {
  source  = "cloudposse/stack-config/yaml//modules/remote-state"
  version = "1.5.0"

  component = "network"

  context = module.this.context
}

output "vpc_id" {
  description = "Mock VPC ID"
  value       = module.network.outputs.vpc_id
}

output "lb_id" {
  description = "Mock load balancer ID"
  value       = module.this.id
}
