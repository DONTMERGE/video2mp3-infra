data "archive_file" "lambda_get_api" {
  type        = "zip"
  source_file = "${path.module}/code/get_api.js"
  output_path = "${path.module}/artifacts/get_api.zip"
}
