resource "aws_instance" "eks-host" {
    ami = var.instance-ami-id
    instance_type = var.instance-type
    key_name = var.instance-key-name

    network_interface {
        device_index = 0
        network_interface_id = aws_network_interface.eks-ni.id
    }

    root_block_device {
        delete_on_termination = var.ebs-delete-on-termination
        volume_type = var.ebs-volume-type
        volume_size = var.ebs-volume-size
        tags = {
            Name = "eks-host-volume"
        }
    }

    tags = {
        Name = "eks-host"
    }
}
