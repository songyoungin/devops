resource "aws_security_group" "eks-sg" {
    name = "eks-sg"
    description = "EKS Security Group"
    vpc_id = data.terraform_remote_state.network.outputs.vpc-id

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [var.sg-ingress-ssh-cidr-block]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "eks-sg"
    }
}
