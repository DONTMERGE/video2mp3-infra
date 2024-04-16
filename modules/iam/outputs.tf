output "iam_role_arn" {
  value       = aws_iam_role.role.arn
  description = "IAM Role ARN for Lambda Functions."
}

output "iam_policy_arn" {
  value       = aws_iam_policy.policy.arn
  description = "IAM Policy for Lambda Functions."
}

