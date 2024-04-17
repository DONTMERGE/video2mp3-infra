variable "s3_bucket_id" {
  type        = string
  description = "AWS S3 bucket to store Lambda artifacts"
}

variable "signer_profile" {
  type        = string
  description = "AWS Signer Profile Name."
}

variable "signer_profile_version_arn" {
  type        = string
  description = "AWS Signer Profile ARN."
}
