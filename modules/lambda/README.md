<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | n/a |
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lambda_code_signing_config.config](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_code_signing_config) | resource |
| [aws_s3_object.lambda_get_api](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_signer_signing_job.lambda_get_api](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/signer_signing_job) | resource |
| [archive_file.lambda_get_api](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_s3_bucket_id"></a> [s3\_bucket\_id](#input\_s3\_bucket\_id) | AWS S3 bucket to store Lambda artifacts | `string` | n/a | yes |
| <a name="input_signer_profile"></a> [signer\_profile](#input\_signer\_profile) | AWS Signer Profile Name. | `string` | n/a | yes |
| <a name="input_signer_profile_version_arn"></a> [signer\_profile\_version\_arn](#input\_signer\_profile\_version\_arn) | AWS Signer Profile ARN. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->