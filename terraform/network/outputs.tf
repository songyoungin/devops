output "vpc-id" {
    value = aws_vpc.eks-vpc.id
}

output "subnet-public-1a-id" {
    value = aws_subnet.eks-subnet-public-1a.id
}

output "subnet-public-1a-cidr-block" {
    value = aws_subnet.eks-subnet-public-1a.cidr_block
}

output "subnet-public-1c-id" {
    value = aws_subnet.eks-subnet-public-1c.id
}

output "subnet-public-1c-cidr-block" {
    value = aws_subnet.eks-subnet-public-1c.cidr_block
}

output "subnet-private-1a-id" {
    value = aws_subnet.eks-subnet-private-1a.id
}

output "subnet-private-1a-cidr-block" {
    value = aws_subnet.eks-subnet-private-1a.cidr_block
}

output "subnet-private-1c-id" {
    value = aws_subnet.eks-subnet-private-1c.id
}

output "subnet-private-1c-cidr-block" {
    value = aws_subnet.eks-subnet-private-1c.cidr_block
}
