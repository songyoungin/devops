data "terraform_remote_state" "network" {
    backend = "s3"
    config = {
    bucket = "521479179257-devops-tf-remote-state"
        key    = "ap-northeast-2.network.tfstate"
        region = "ap-northeast-2"
    }
}

data "terraform_remote_state" "eks" {
    backend = "s3"
    config = {
        bucket = "521479179257-devops-tf-remote-state"
        key    = "ap-northeast-2.eks.tfstate"
        region = "ap-northeast-2"
    }
}

data "aws_caller_identity" "current" {}
