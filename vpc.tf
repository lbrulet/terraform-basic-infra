resource "aws_subnet" "public_az01" {
  cidr_block = "10.0.0.0/22"
  vpc_id = aws_vpc.my_vpc.id
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public AZ 01"
  }
}

resource "aws_subnet" "public_az02" {
  cidr_block = "10.0.4.0/22"
  vpc_id = aws_vpc.my_vpc.id
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public AZ 02"
  }
}

resource "aws_subnet" "public_az03" {
  cidr_block = "10.0.8.0/22"
  vpc_id = aws_vpc.my_vpc.id
  availability_zone = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public AZ 03"
  }
}

resource "aws_subnet" "private_az01" {
  cidr_block = "10.0.8.0/22"
  vpc_id = aws_vpc.my_vpc.id
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Private AZ 01"
  }
}

resource "aws_subnet" "private_az02" {
  cidr_block = "10.0.8.0/22"
  vpc_id = aws_vpc.my_vpc.id
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Private AZ 02"
  }
}

resource "aws_subnet" "private_az03" {
  cidr_block = "10.0.8.0/22"
  vpc_id = aws_vpc.my_vpc.id
  availability_zone = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "Private AZ 03"
  }
}