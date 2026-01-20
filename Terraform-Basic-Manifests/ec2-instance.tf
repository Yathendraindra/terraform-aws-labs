# Terraform Settings Block
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            #version = "~> 6.4" #recommended in production
        }
    }
}

# Provider Block
provider "aws" {
    profile = "default"
    region = "ap-south-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
    ami = "ami-02b8269d5e85954ef"
    instance_type = "t2.micro"
}