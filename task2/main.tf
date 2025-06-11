resource "aws_instance" "backend" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.sg_id]
  associate_public_ip_address = true

  user_data = file("${path.module}/user_data_backend.sh")

  tags = {
    Name = "Flask-Backend"
  }
}

resource "aws_instance" "frontend" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.sg_id]
  associate_public_ip_address = true

  user_data = templatefile("${path.module}/user_data_frontend.sh", {
    backend_ip = aws_instance.backend.public_ip
  })

  depends_on = [aws_instance.backend]

  tags = {
    Name = "Node-Frontend"
  }
}
