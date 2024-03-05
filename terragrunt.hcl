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

generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
terraform {
  backend "s3" {
    bucket         = "tf-backend-state-gh-actions"
    key            = "Video2MP3/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
EOF
}

inputs = {
  user_pool_name = local.values.locals.user_pool_name
  tags           = local.values.locals.tags
}
