resource "aws_security_group" "my_security_group" {
  description = "Allow HTTP & SSH inbound traffic"
  name = "my_security_group"
  vpc_id = aws_vpc.my_vpc.id

  ingress {
    description = "SSH from internet"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP from internet"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_launch_configuration" "my_launch_configuration" {
  name = "my_launch_configuration"
  image_id = var.ami_id
  instance_type = var.instance_type
  key_name = aws_key_pair.deployer.key_name
  security_groups = [aws_security_group.my_security_group.id]
}

resource "aws_autoscaling_group" "my_auto_scaling_group" {
  name = "my_auto_scaling_group"
  launch_configuration = aws_launch_configuration.my_launch_configuration.name
  vpc_zone_identifier = [aws_subnet.private_az01.id, aws_subnet.private_az02.id, aws_subnet.private_az03.id]
  max_size = 1
  min_size = 1
}