terraform {
  backend "s3" {
    bucket  = "ashok-devops-terraform-state-2026"
    key     = "terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "devops_ec2" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"

  tags = {
    Name = "aws-devops-terraform"
  }
}
