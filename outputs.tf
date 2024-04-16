output "user_pool_arn" {
  value       = module.aws_cognito_user_pool.arn
  description = "ARN of the Cognito User Pool created."
}

output "user_pool_name" {
  value       = module.aws_cognito_user_pool.name
  description = "Name of the Cognito User Pool created."
}

output "user_pool_creation_date" {
  value       = module.aws_cognito_user_pool.creation_date
  description = "Date the Cognito User Pool was created."
}

output "aws_signer_profile_name" {
  value       = aws_signer_signing_profile.video2mp3.name
  description = "Name of the AWS Signer Profile."
}

output "code_s3_bucket" {
  value       = module.s3_bucket.s3_bucket_arn
  description = "Name of the AWS S3 Bucket."
}
