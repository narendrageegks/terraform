resource "aws_db_instance" "mysql_instance" {
  identifier        = "my-mysql-instance"
  allocated_storage = 20
  storage_type      = "gp2"
  engine            = "mysql"
  engine_version    = "8.0.33"
  instance_class    = "db.t2.micro"

  username                = var.username
  password                = var.password
  db_subnet_group_name    = aws_db_subnet_group.example.name
  parameter_group_name    = aws_db_parameter_group.example.name
  vpc_security_group_ids  = [aws_security_group.allow_tls.id]
  skip_final_snapshot     = true
  publicly_accessible     = false
  multi_az                = false
  backup_retention_period = 7
  maintenance_window      = "Mon:01:00-Mon:05:00"
  deletion_protection     = false
}

resource "aws_db_parameter_group" "example" {
  name        = "my-mysql-instance"
  family      = "mysql8.0"
  description = "My DB parameter group description"
  parameter {
    name  = "max_connections"
    value = "1000"
  }
}

resource "aws_db_subnet_group" "example" {
  name        = "my-db-subnet-group-name"
  subnet_ids  = ["${aws_subnet.private.id}","${aws_subnet.public.id}"]
  description = "My DB subnet group description"
}
