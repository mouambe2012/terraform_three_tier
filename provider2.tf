terraform {
  backend "s3" {
    bucket = "dgs2terraform"
    key    = "dgs2terraform/dev"
    region = "us-east-1"
  }
}


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}