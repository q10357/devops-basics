terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }

  backend "s3" {
    bucket = "1000-terraform-state"
    key    = "1000/1000-terraform.state"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}