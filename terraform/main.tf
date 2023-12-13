
module "demo_vpc" {
  source                  = "./modules/vpc"

  cidr_block                 = var.cidr_block
}

module "demo_subnet" {
  source = "./modules/subnet"

  vpc_id = module.demo_vpc.vpc_id

  cidr_block_public_subnet_1 = "10.0.1.0/24"
  az_public_subnet_1 = "us-east-1a"

  cidr_block_public_subnet_2 = "10.0.2.0/24"
  az_public_subnet_2 = "us-east-1b"

  cidr_block_private_subnet_1 = "10.0.3.0/24"
  az_private_subnet_1 = "us-east-1a"

  cidr_block_private_subnet_2 = "10.0.4.0/24"
  az_private_subnet_2 = "us-east-1b"

}


module "demo_nat" {
  source = "./modules/nat"
  public_subnet_id = module.demo_subnet.public_subnet_id

}

module "demo_iam" {
  source = "./modules/iam"
  iam_role = "test"
}

module "demo_s3" {
  source = "./modules/s3"
  bucket_name = "${var.environment}--test-bucket"
}

module "demo_sg" {
  source = "./modules/security_group"
  sg_name  = "${var.environment}--sg"

}

module "demo_ec2" {
  source = "./modules/ec2"

  instance_profile = module.demo_iam.iam_profile_name
  instance_type = var.instance_type
  security_group_id = module.demo_sg.id
  key_name = var.ssh_key_name
  subnet_id = module.demo_subnet.private_subnet_id

}

