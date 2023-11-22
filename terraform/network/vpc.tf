resource "aws_vpc" "eks-vpc" {
    cidr_block = var.vpc-cidr-block

    tags = {
        Name = "eks-vpc"
    }
}
