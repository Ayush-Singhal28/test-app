# Create VPC


# Create public subnets
resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_block_public_subnet_1
  availability_zone       = var.az_public_subnet_1
  map_public_ip_on_launch = true
}


resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_block_public_subnet_2
  availability_zone       = var.az_public_subnet_2
  map_public_ip_on_launch = true
}

# Create private subnets
resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_block_private_subnet_1
  availability_zone       = var.az_private_subnet_1
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_block_private_subnet_2
  availability_zone       = var.az_private_subnet_2
}




