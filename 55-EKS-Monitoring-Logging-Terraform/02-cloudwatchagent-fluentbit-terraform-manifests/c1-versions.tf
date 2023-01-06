# Terraform Settings Block
terraform {
  required_version = ">= 1.3.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.14"
     }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.11"
    }    
    http = {
      source = "hashicorp/http"
      version = "~> 2.2.0"
    }     
    kubectl = {
      source = "gavinbunney/kubectl"
      version = "1.14.0"
    }     
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "terraform-on-aws-eks-kyf26"
    key    = "dev/eks-cloudwatch-agent/terraform.tfstate"
    region = "ap-northeast-1"

    # For State Locking
    dynamodb_table = "dev-eks-cloudwatch-agent"    
  }     
}

