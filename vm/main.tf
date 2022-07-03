terraform {

  required_version = ">= 1.2.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.21.0"
    }
  }

  backend "s3" {
    bucket = "heliommsfilho-terraform-remote-state-bucket"
    region = "eu-central-1"
    key    = "aws-vm/terraform.tfstate"
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

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "heliommsfilho-terraform-remote-state-bucket"
    region = "eu-central-1"
    key    = "aws-vpc/terraform.tfstate"
  }
}
