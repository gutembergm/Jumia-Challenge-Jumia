resource "aws_db_instance" "postgres_14" {
  storage_encrypted       = true
  multi_az                = false
  instance_class          = aws_db_instance.postgres_14
  deletion_protection     = true
  db_name                 = "jumia_phone_validator"
  backup_retention_period = 180
  availability_zone       = "eu-west-3a"
  allocated_storage       = 400

  tags = {
    env      = "Test"
    archUUID = "75d35c9d-955e-405d-bbfe-b983ba7d48bb"
  }
}
