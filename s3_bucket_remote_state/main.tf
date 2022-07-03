terraform {
  required_version = "1.2.4"

  required_providers {
    aws = {
      version = "4.21.0",
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      owner = "heliommsfilho",
      managed-by = "terraform"
    }
  }
}
