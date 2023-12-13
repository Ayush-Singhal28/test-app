variable "aws_region" {}

variable "ssh_key_name" {
  default = "devops-key"
}

variable "private_key_path" {}

variable "instance_type" {}

variable "environment" {}

variable "tag_owner" {}

variable "cidr_block" {
  default = ""
}