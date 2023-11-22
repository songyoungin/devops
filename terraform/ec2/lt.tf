resource "aws_launch_template" "eks-host-lt" {
    name = "eks-host-lt"
    image_id = var.instance-ami-id
    instance_type = var.instance-type
    key_name = var.instance-key-name    

    network_interfaces {
        device_index = 0
        subnet_id = data.terraform_remote_state.network.outputs.subnet-public-1a-id
        security_groups = [
            data.terraform_remote_state.eks.outputs.eks-sg-id
        ]
        associate_public_ip_address = true
        private_ip_address = "192.168.1.100"
    }

    block_device_mappings {
        device_name = "/dev/xvda"
        ebs {
            volume_size = var.ebs-volume-size
            volume_type = var.ebs-volume-type
            delete_on_termination = true
        }
    }

    tags = {
        Name = "eks-host-lt"
    }
}
