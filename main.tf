provider "aws" {
  version = "~> 2.8"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = var.key_pair
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_internet_gateway" "my_internet_gateway" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "my_internet_gateway"
  }
}
