aws_region                  = "us-east-1"

ssh_key_name                = "demo"

instance_type               = "t2.medium"

private_key_path            = "demo.pem"

environment                 = "demo"

tag_owner                   = "devops/sre"

availability_zones          = [ "us-east-1a", "us-east-1b" ]

cidr_block                  = "10.0.0.0/16"
