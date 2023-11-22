variable "region" {
  type    = string
  default = "ap-northeast-2"
}

variable "vpc-cidr-block" {
  type    = string
  default = "192.168.0.0/16"
}

variable "subnet-public-1a-cidr-block" {
  type    = string
  default = "192.168.1.0/24"
}

variable "subnet-public-1c-cidr-block" {
  type    = string
  default = "192.168.2.0/24"
}

variable "subnet-private-1a-cidr-block" {
  type    = string
  default = "192.168.3.0/24"
}

variable "subnet-private-1c-cidr-block" {
  type    = string
  default = "192.168.4.0/24"
}

