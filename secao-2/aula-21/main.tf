terraform {
  required_version = "~> 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region       = var.location
  default_tags {
    tags = local.common_tags # Just to show show to reference using 'locals'
  }
}