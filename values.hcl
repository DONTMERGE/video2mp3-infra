locals {
  user_pool_name = "Video2Mp3_Coognito_Pool"
  tags = {
    Environment = "video2mp3-infra"
    Terraform   = true
  }
}
