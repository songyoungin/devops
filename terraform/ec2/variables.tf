variable "region" {
    type    = string
    default = "ap-northeast-2"
}

variable "instance-type" {
    type    = string
    default = "t3.medium"
}

variable "instance-ami-id" {
    type    = string
    default = "ami-05e02e6210658716f"
}

variable "instance-key-name" {
    type    = string
    default = "admin-kp"
}

variable "ebs-volume-type" {
    type    = string
    default = "gp3"
}

variable "ebs-volume-size" {
    type    = number
    default = 20
}

variable "ebs-delete-on-termination" {
    type    = bool
    default = true
}

variable "ebs-device-name" {
    type    = string
    default = "/dev/xvda"
}

variable "availability-zone" {
    type    = string
    default = "ap-northeast-2a"
}
