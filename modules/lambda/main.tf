data "archive_file" "lambda_get_api" {
  type        = "zip"
  source_file = "${path.module}/code/get_api.js"
  output_path = "${path.module}/code/get_api.zip"
}

resource "aws_s3_object" "lambda_get_api" {
  key                    = "unsigned/get_api.zip"
  bucket                 = var.s3_bucket_id
  source                 = "${path.module}/code/get_api.zip"
  server_side_encryption = "AES256"
}

resource "aws_signer_signing_job" "lambda_get_api" {
  profile_name = var.signer_profile

  source {
    s3 {
      bucket  = var.s3_bucket_id
      key     = aws_s3_object.lambda_get_api.id
      version = aws_s3_object.lambda_get_api.version_id
    }
  }

  destination {
    s3 {
      bucket = var.s3_bucket_id
      prefix = "signed/"
    }
  }

  ignore_signing_job_failure = true
}

resource "aws_lambda_code_signing_config" "config" {
  allowed_publishers {
    signing_profile_version_arns = [var.signer_profile_version_arn]
  }

  policies {
    untrusted_artifact_on_deployment = "Enforce"
  }
}
