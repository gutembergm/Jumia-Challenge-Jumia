resource "aws_lb_listener" "lb_listner_c" {
  protocol          = "HTTPS"
  port              = " 443"
  load_balancer_arn = aws_lb.alb_c.arn

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.aws_lb_target_group_8_c.arn
    redirect {
      protocol = "TCP"
      port     = "8081"
    }
  }
}

resource "aws_lb_target_group" "aws_lb_target_group_8_c" {
  vpc_id   = aws_vpc.aws_vpc.id
  protocol = "HTTP"
  port     = 443
  name     = "target-group"

  health_check {
    protocol = "tcp"
    port     = "443"
  }
}

resource "aws_lb_target_group_attachment" "aws_lb_target_group_attachment_10_c" {
  target_id         = aws_instance.t3a_9_c.id
  target_group_arn  = aws_lb_target_group.aws_lb_target_group_8_c.arn
  availability_zone = "eu-west-3a"
}

resource "aws_lb" "alb_c" {
  vpc_id = aws_vpc.aws_vpc.id

  access_logs {
    prefix  = "lb_"
    enabled = true
    bucket  = "s3_bucket_jumia_phone_validator"
  }

  security_groups = [
    aws_security_group.sg_c.id,
    aws_security_group.sg_c.id,
    aws_security_group.sg_c.id,
    aws_security_group.sg_c.id,
    aws_security_group.aws_sg.id,
  ]

  subnets = [
    aws_subnet.default_c.id,
    aws_subnet.subnet2_c.id,
  ]
}
