terraform {
  # This tells Terraform to store the state file securely in AWS S3
  backend "s3" {
    bucket = "harsha-terraform-test11223" # Replace this with the exact name of the S3 bucket you created
    key    = "infrastructure/terraform.tfstate"
    region = "ap-south-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}