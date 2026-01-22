# Terraform block
terraform {
  required_version = "~> 1.8"
  required_providers {
    aws = {
       source = "hashicorp/aws"
       version = "~> 6.0"
    }
  }
}
# Provider Block
provider "aws" {
    
  
}