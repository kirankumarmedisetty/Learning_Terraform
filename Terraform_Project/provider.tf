########################################
# provider.tf
########################################
terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.23.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1" # Change to your preferred AWS region
}