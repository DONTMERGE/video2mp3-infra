module "aws_cognito_user_pool" {

  source = "lgallard/cognito-user-pool/aws"

  user_pool_name = var.user_pool_name

  # tags
  tags = var.tags
}
