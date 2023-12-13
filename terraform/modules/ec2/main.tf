
data "aws_ami" "ami" {
    most_recent = true

    filter {
        name   = "name"
        values = [ "${var.environment}-${var.owner}-*" ]
    }

    owners = ["amazon"]

}

resource "aws_instance" "ec2_instance" {
    ami           = data.aws_ami.ami.id
    instance_type = var.instance_type
    subnet_id     = var.subnet_id
    key_name      = var.key_name
    security_group = [var.security_group_id]
    iam_instance_profile = var.instance_profile
}