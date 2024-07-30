terraform {
  required_version = "1.9.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.60.0"
    }
  }

  backend "s3" {
    bucket = "tfstate-891377099859"
    key    = "tfstates/dev/04/state/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}
