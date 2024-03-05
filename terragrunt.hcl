locals {
  values = read_terragrunt_config("values.hcl")
}
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.39.1"
    }
  }
}
EOF
}

inputs = {
  user_pool_name = local.values.locals.user_pool_name
  tags           = local.values.locals.tags
}
