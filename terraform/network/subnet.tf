resource "aws_subnet" "eks-subnet-public-1a" {
    vpc_id     = aws_vpc.eks-vpc.id
    cidr_block = var.subnet-public-1a-cidr-block
    availability_zone = "ap-northeast-2a"

    tags = {
      Name = "eks-subnet-public-1a"
    }
}

resource "aws_subnet" "eks-subnet-public-1c" {
    vpc_id     = aws_vpc.eks-vpc.id
    cidr_block = var.subnet-public-1c-cidr-block
    availability_zone = "ap-northeast-2c"

    tags = {
      Name = "eks-subnet-public-1c"
    }
}

resource "aws_subnet" "eks-subnet-private-1a" {
    vpc_id     = aws_vpc.eks-vpc.id
    cidr_block = var.subnet-private-1a-cidr-block
    availability_zone = "ap-northeast-2a"

    tags = {
      Name = "eks-subnet-private-1a"
    }
}

resource "aws_subnet" "eks-subnet-private-1c" {
    vpc_id     = aws_vpc.eks-vpc.id
    cidr_block = var.subnet-private-1c-cidr-block
    availability_zone = "ap-northeast-2c"

    tags = {
      Name = "eks-subnet-private-1c"
    }
}
