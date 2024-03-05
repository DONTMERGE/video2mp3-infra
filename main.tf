module "aws_cognito_user_pool" {

  source = "lgallard/cognito-user-pool/aws"

  user_pool_name = "Video2Mp3_Coognito_Pool"

  # tags
  tags = {
    Owner       = "infra"
    Environment = "video2mp3-infra"
    Terraform   = true
  }
}
