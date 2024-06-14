output "full_account_map" {
  value = {
    "core-auto"    = "461333128641" # this is the true core-auto, where gitops resources are deployed
    "plat-dev"     = "630114703016" # this is actually plat-sandbox. For testing we are intentionally deploying everything into sandbox
    "plat-staging" = "630114703016" # ^
    "plat-prod"    = "630114703016" # ^^
  }
  description = "The map of account name to account ID (number)."
}
