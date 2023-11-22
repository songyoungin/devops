resource "aws_network_interface" "eks-ni" {
    subnet_id = data.terraform_remote_state.network.outputs.subnet-public-1a-id
    private_ips = ["192.168.1.100"]
    security_groups = [data.terraform_remote_state.eks.outputs.eks-sg-id]
    
    tags = {
        Name = "eks-ni"
    }
}
