
resource "aws_iam_role" "iam_role" {
  name = var.iam_role
  assume_role_policy = ""
}

resource "aws_iam_instance_profile" "instance_profile" {
  name = "${var.iam_role}-profile"
  role = aws_iam_role.iam_role.name
}