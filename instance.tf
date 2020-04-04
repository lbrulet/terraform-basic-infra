resource "aws_launch_configuration" "my_launch_configuration" {
  name = "my_launch_configuration"
  image_id = var.ami_id
  instance_type = var.instance_type
}