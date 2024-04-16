output "iam_role_arn" {
  value       = aws_iam_role.lambda_role.arn
  description = "IAM Role ARN for Lambda Functions."
}

output "iam_policy_arn" {
  value       = aws_iam_policy.lambda_policy.arn
  description = "IAM Policy for Lambda Functions."
}

