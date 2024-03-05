# VIDEO2MP3-INFRA Repo


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

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_cognito_user_pool"></a> [aws\_cognito\_user\_pool](#module\_aws\_cognito\_user\_pool) | lgallard/cognito-user-pool/aws | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_user_pool_arn"></a> [user\_pool\_arn](#output\_user\_pool\_arn) | ARN of the Cognito User Pool created. |
<!-- END_TF_DOCS -->
