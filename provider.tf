terraform {
  backend "s3" {
    bucket = "harsha-terraform-test11223"
    key    = "infrastructure/terraform.tfstate"
    region = "ap-south-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.95.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}