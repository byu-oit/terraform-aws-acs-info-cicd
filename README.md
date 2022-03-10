![Latest GitHub Release](https://img.shields.io/github/v/release/byu-oit/terraform-aws-aws-info-cicd?sort=semver)

# Terraform AWS Backend S3 CI/CD
Creates the IAM policies needed to use [Terraform AWS ACS Info](https://github.com/byu-oit/terraform-aws-acs-info).

#### [New to Terraform Modules at BYU?](https://devops.byu.edu/terraform/index.html)

## Usage
```hcl
module "acs-info-cicd" {
  source = "github.com/byu-oit/terraform-aws-acs-info-cicd?ref=v1.0.0"
  name   = "my_project"
}
```

## Requirements
* Terraform version 1.0.0 or greater

## Inputs
| Name | Type  | Description | Default |
| --- | --- | --- | --- |
| name | string | Used to prefix created resource names | |
| tags | map(string) | A map of AWS Tags to attach to each resource created | {} |

## Outputs
| Name | Type | Description |
| --- | --- | --- |
| cicd_policy | [IAM Policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | Permissions needed to use [Terraform AWS ACS Info](https://github.com/byu-oit/terraform-aws-acs-info). |
