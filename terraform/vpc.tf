resource "aws_vpc" "aws_vpc" {
  enable_dns_hostnames = true
  cidr_block           = "10.0.0.0/16"
}

resource "aws_subnet" "subnet2_c_c" {
  vpc_id            = aws_vpc.aws_vpc.id
  cidr_block        = var.subnet2_cidr
  availability_zone = "eu-west-3c"
}

resource "aws_subnet" "aws-subnet-a" {
  vpc_id            = aws_vpc.aws_vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = "eu-west-3a"
}

resource "aws_subnet" "subnet2_c" {
  vpc_id            = aws_vpc.aws_vpc.id
  cidr_block        = var.subnet2_cidr
  availability_zone = "eu-west-3b"
}

resource "aws_security_group" "aws_sg" {
  vpc_id = aws_vpc.aws_vpc.id

  ingress {
    to_port  = "80, 443, 113"
    protocol = "tcp"
  }
}

resource "aws_internet_gateway" "aws_internet_gateway_12_c" {
  vpc_id = aws_vpc.aws_vpc.id
}

