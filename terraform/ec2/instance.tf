resource "aws_instance" "eks-host" {
    launch_template {
        id = aws_launch_template.eks-host-lt.id
        version = "$Latest"
    }

    tags = {
        Name = "eks-host"
    }
}
