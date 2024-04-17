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
