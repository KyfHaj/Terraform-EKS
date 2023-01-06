# Terraform Settings Block
terraform {
  required_version = ">= 1.3.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
     }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.7.1"
    }     
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "terraform-on-aws-eks-kyf26"
    key    = "dev/ebs-sampleapp-demo/terraform.tfstate"
    region = "ap-northeast-1"

    # For State Locking
    dynamodb_table = "dev-ebs-sampleapp-demo"    
  }    
}

