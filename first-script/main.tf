terraform {
  required_version = "0.14.4"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "3.23.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "tf-test-bucket-19487928379827139"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}