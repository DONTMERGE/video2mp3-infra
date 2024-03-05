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
