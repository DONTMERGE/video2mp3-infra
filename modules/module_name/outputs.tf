output "user_pool_name" {
  value       = module.vpc.vpc_arn
  description = "Amazon Resource Name (ARN) of VPC"
}
