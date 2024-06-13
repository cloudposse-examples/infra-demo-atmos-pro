# THIS IS NOT THE TRUE IMPLEMENTION!
# We have drastically simplified the module here for demo sake
locals {
  terraform_role_map = {
    "core-auto"    = "arn:aws:iam::461333128641:role/cptest-core-gbl-auto-terraform"
    "plat-dev"     = "arn:aws:iam::142885371614:role/cptest-plat-gbl-dev-terraform"
    "plat-staging" = "arn:aws:iam::204944560748:role/cptest-plat-gbl-staging-terraform"
    "plat-prod"    = "arn:aws:iam::500863271350:role/cptest-plat-gbl-prod-terraform"
  }

  account_id             = "${module.this.tenant}-${module.this.stage}"
  terraform_role_arn     = local.terraform_role_map[local.account_id]
  terraform_profile_name = null
}
