terraform {
  required_version = "1.9.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.60.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = ""
}

resource "aws_s3_bucket" "my-bucket" {

  bucket = "my-bucket-2092028u203"

  tags = {
    Name        = "My Bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Matheus"
    UpdatedAt   = "2024-07-29"
  }

}