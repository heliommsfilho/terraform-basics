terraform {
  required_version = ">= 1.2.4"

  backend "s3" {
    bucket = "heliommsfilho-terraform-remote-state-bucket"
    key    = "aws-vpc/terraform.tfstate"
    region = "eu-central-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.21.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      owner      = "heliommsfilho"
      managed-by = "terraform"
    }
  }
}
