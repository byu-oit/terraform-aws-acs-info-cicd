terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = ">= 3.0.0"
  }
}

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

locals {
  account_id = data.aws_caller_identity.current.account_id
  region     = data.aws_region.current.name
}

data "template_file" "cicd_policy" {
  template = file("${path.module}/cicd-policy.json")
  vars = {
    account_id = local.account_id
    region     = local.region
  }
}

resource "aws_iam_policy" "cicd_policy" {
  name   = "${var.name}-acs-info-cicd"
  tags   = var.tags
  policy = data.template_file.cicd_policy.rendered
}
