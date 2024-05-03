module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket_prefix = "video2mp3repo-"
  force_destroy = true

  # S3 bucket-level Public Access Block configuration
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  versioning = {
    enabled = true
  }

  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_signer_signing_profile" "video2mp3" {
  platform_id = "AWSLambda-SHA384-ECDSA"
  name        = "Video2MP3_Infra"

  signature_validity_period {
    value = 3
    type  = "MONTHS"
  }
}

module "iam" {
  source = "./modules/iam"
}

module "lambda" {
  source                     = "./modules/lambda"
  s3_bucket_id               = module.s3_bucket.s3_bucket_id
  signer_profile             = aws_signer_signing_profile.video2mp3.name
  signer_profile_version_arn = aws_signer_signing_profile.video2mp3.version_arn
}
