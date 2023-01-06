terraform {
  required_version = "~> 1.3.6"  #version phải lớn hơn 0.14
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  region = "ap-northeast-1"
  profile = "default" # sử dụng credentials $HOME/.aws/credentials (của aws configure)
}

