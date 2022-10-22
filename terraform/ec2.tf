resource "aws_instance" "t2_16" {
  subnet_id         = aws_subnet.aws-subnet-a.id
  availability_zone = "eu-west-3a"

  security_groups = [
    aws_security_group.aws_sg.id,
  ]

  tags = {
    env      = "Test"
    archUUID = "75d35c9d-955e-405d-bbfe-b983ba7d48bb"
  }
}

resource "aws_eip" "eip_17" {

  tags = {
    env      = "Test"
    archUUID = "75d35c9d-955e-405d-bbfe-b983ba7d48bb"
  }
}

resource "aws_instance" "t2_18" {
  subnet_id         = aws_subnet.aws-subnet-a.id
  availability_zone = "eu-west-3a"

  security_groups = [
    aws_security_group.aws_sg.id,
    aws_security_group.aws_sg.id,
  ]

  tags = {
    env      = "Test"
    archUUID = "75d35c9d-955e-405d-bbfe-b983ba7d48bb"
  }
}

resource "aws_key_pair" "key_pair_19" {
  public_key = "gai3xBaGWgKrfn30747Yr6VYcJ2dgBxfk5YxwvsA"
  key_name   = "AKIA6N7ZB2FSRQRETCEA"

  tags = {
    env      = "Test"
    archUUID = "75d35c9d-955e-405d-bbfe-b983ba7d48bb"
  }
}

resource "aws_ebs_volume" "ebs_volume_20" {
  availability_zone = "eu-west-3a"

  tags = {
    env      = "Test"
    archUUID = "75d35c9d-955e-405d-bbfe-b983ba7d48bb"
  }
}

