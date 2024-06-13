output "terraform_role_arn" {
  value       = local.terraform_role_arn
  description = "The AWS Role ARN for Terraform to use when provisioning resources in the account, when Role ARNs are in use"
}

output "terraform_profile_name" {
  value       = local.terraform_profile_name
  description = "The AWS config profile name for Terraform to use when provisioning resources in the account, when profiles are in use"
}
