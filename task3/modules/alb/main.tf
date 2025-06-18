resource "aws_lb" "alb_front" {
  name               = "frontend-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.front_sg_id]
  subnets            = var.subnet_ids

  tags = {
    Name = "frontend-alb"
  }
}

resource "aws_lb" "alb_back" {
  name               = "backend-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.back_sg_id]
  subnets            = var.subnet_ids

  tags = {
    Name = "backend-alb"
  }
}

# ---------------------------------------------------------

# Target group for Express (frontend)
resource "aws_lb_target_group" "frontend_tg" {
  name     = "front-tg"
  port     = 3000
  protocol = "HTTP"
  vpc_id   = var.vpc_id
  target_type = "ip"

  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
    matcher             = "200-399"
  }

  tags = {
    Name = "express-tg"
  }
}

# Target group for Flask (backend)
resource "aws_lb_target_group" "backend_tg" {
  name     = "back-tg"
  port     = 5000
  protocol = "HTTP"
  vpc_id   = var.vpc_id
  target_type = "ip"

  health_check {
    path                = "/health"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
    matcher             = "200-399"
  }

  tags = {
    Name = "flask-tg"
  }
}

# ----------------------------------------------------------


resource "aws_lb_listener" "front_listener" {
  load_balancer_arn = aws_lb.alb_front.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.frontend_tg.arn
  }
}

resource "aws_lb_listener" "back_listener" {
  load_balancer_arn = aws_lb.alb_back.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.backend_tg.arn
  }
}
