module "aws_cognito_user_pool" {
  source = "lgallard/cognito-user-pool/aws"
  user_pool_name = var.user_pool_name
  tags = var.tags
}

resource "aws_cognito_user_pool_client" "video2mp3_client" {
  name = "video2mp3-client"

  user_pool_id = module.aws_cognito_user_pool.id

  generate_secret     = true
  explicit_auth_flows = ["ADMIN_NO_SRP_AUTH"]
}

module "lambda_example_code-signing" {
  source  = "terraform-aws-modules/lambda/aws//examples/code-signing"
  version = "7.2.6"
}
