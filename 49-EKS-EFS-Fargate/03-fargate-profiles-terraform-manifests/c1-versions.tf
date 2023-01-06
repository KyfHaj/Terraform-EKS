# Terraform Settings Block
terraform {
  required_version = ">= 1.3.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.13"
     }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.11"
    }      
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "terraform-on-aws-eks-kyf26"
    key    = "dev/eks-fargate-profile/terraform.tfstate"
    region = "ap-northeast-1"

    # For State Locking
    dynamodb_table = "dev-eks-fargate-profile"    
  }     
}

# Terraform AWS Provider Block
provider "aws" {
  region = var.aws_region
}
