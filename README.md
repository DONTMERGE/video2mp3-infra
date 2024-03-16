# VIDEO2MP3-INFRA Repo

[![Terraform Execution Pipeline.](https://github.com/DONTMERGE/video2mp3-infra/actions/workflows/aws-build.yml/badge.svg)](https://github.com/DONTMERGE/video2mp3-infra/actions/workflows/aws-build.yml) 
[![Update Terraform Docs](https://github.com/DONTMERGE/video2mp3-infra/actions/workflows/docs.yml/badge.svg)](https://github.com/DONTMERGE/video2mp3-infra/actions/workflows/docs.yml) 
[![Create a Release](https://github.com/DONTMERGE/video2mp3-infra/actions/workflows/release.yml/badge.svg)](https://github.com/DONTMERGE/video2mp3-infra/actions/workflows/release.yml)

### Template Repo Initialization
#### terragrunt init
```
Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "4.34.0"...
- Installing hashicorp/aws v4.34.0...
- Installed hashicorp/aws v4.34.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```
#### terragrunt plan
```
No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no
differences, so no changes are needed.
```
### Manually execute Terraform Docs
```
terraform-docs -c .terraform-docs.yml .
README.md updated successfully
```
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.39.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.39.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_cognito_user_pool"></a> [aws\_cognito\_user\_pool](#module\_aws\_cognito\_user\_pool) | lgallard/cognito-user-pool/aws | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_cognito_user_pool_client.video2mp3_client](https://registry.terraform.io/providers/hashicorp/aws/5.39.1/docs/resources/cognito_user_pool_client) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tags"></a> [tags](#input\_tags) | Video2MP3 Infra Tags. | `map(string)` | n/a | yes |
| <a name="input_user_pool_name"></a> [user\_pool\_name](#input\_user\_pool\_name) | Name of the Cognito User Pool. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_user_pool_arn"></a> [user\_pool\_arn](#output\_user\_pool\_arn) | ARN of the Cognito User Pool created. |
| <a name="output_user_pool_creation_date"></a> [user\_pool\_creation\_date](#output\_user\_pool\_creation\_date) | Date the Cognito User Pool was created. |
| <a name="output_user_pool_name"></a> [user\_pool\_name](#output\_user\_pool\_name) | Name of the Cognito User Pool created. |
<!-- END_TF_DOCS -->
