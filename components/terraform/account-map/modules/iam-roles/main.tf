# THIS IS NOT THE TRUE IMPLEMENTATION!
# We have drastically simplified the module here for demo sake
locals {
  terraform_role_map = {
    "core-auto"    = "arn:aws:iam::461333128641:role/cptest-core-gbl-auto-terraform"    # this is the true core-auto, where gitops resources are deployed
    "plat-dev"     = "arn:aws:iam::630114703016:role/cptest-plat-gbl-sandbox-terraform" # this is actually plat-sandbox. For testing we are intentionally deploying everything into sandbox
    "plat-staging" = "arn:aws:iam::630114703016:role/cptest-plat-gbl-sandbox-terraform" # ^
    "plat-prod"    = "arn:aws:iam::630114703016:role/cptest-plat-gbl-sandbox-terraform" # ^^
  }

  account_id             = "${module.this.tenant}-${module.this.stage}"
  terraform_role_arn     = local.terraform_role_map[local.account_id]
  terraform_profile_name = null
}
