resource "aws_db_instance" "my_database" {
  instance_class = "db.t2.micro"
  db_subnet_group_name = aws_db_subnet_group.my_db_subnet_group.name
  vpc_security_group_ids = [aws_vpc.my_vpc.default_security_group_id]
  allocated_storage = 8
  engine = "postgres"
  engine_version = "9.6.16"
  username = "postgres"
  password = "rmittute"
  name = "my_database"
  identifier = "my-database"
  skip_final_snapshot = true
}

resource "aws_db_subnet_group" "my_db_subnet_group" {
  name = "my_db_subnet_group"
  subnet_ids = [aws_subnet.data_az01.id, aws_subnet.data_az02.id, aws_subnet.data_az03.id]

  tags = {
    Name = "my_db_subnet_group"
  }
}