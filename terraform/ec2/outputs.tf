output "eks-host-instance-id" {
    value = aws_instance.eks-host.id
}

output "eks-host-instance-public-ip" {
    value = aws_instance.eks-host.public_ip
}
