terraform {
  backend "s3" {
    bucket         = "tfstatelsj"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.34"
    }
  }
}

provider "aws" {
  region = var.region
}
