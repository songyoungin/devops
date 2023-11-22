terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.9.0"
    }
  }
  backend "s3" {
    bucket = "521479179257-devops-tf-remote-state"
    key    = "ap-northeast-2.ec2.tfstate"
    region = "ap-northeast-2"
  }
}
