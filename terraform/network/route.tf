resource "aws_route_table" "eks-public" {
    vpc_id = aws_vpc.eks-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id   
    }

    tags = {
        Name = "eks-public"
    }
}

resource "aws_route_table_association" "eks-public-1a" {
    subnet_id = aws_subnet.eks-subnet-public-1a.id
    route_table_id = aws_route_table.eks-public.id
}

resource "aws_route_table_association" "eks-public-1c" {
    subnet_id = aws_subnet.eks-subnet-public-1c.id
    route_table_id = aws_route_table.eks-public.id
}

resource "aws_route_table" "eks-private" {
    vpc_id = aws_vpc.eks-vpc.id

    tags = {
        Name = "eks-private"
    }
}

resource "aws_route_table_association" "eks-private-1a" {
    subnet_id = aws_subnet.eks-subnet-private-1a.id
    route_table_id = aws_route_table.eks-private.id
}

resource "aws_route_table_association" "eks-private-1c" {
    subnet_id = aws_subnet.eks-subnet-private-1c.id
    route_table_id = aws_route_table.eks-private.id
}
