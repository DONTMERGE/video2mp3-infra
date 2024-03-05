output "user_pool_arn" {
  value       = module.aws_cognito_user_pool.arn
  description = "ARN of the Cognito User Pool created."
}
