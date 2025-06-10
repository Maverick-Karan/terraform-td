resource "aws_instance" "app_server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.sg_id]

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "Flask-Express-Server"
  }
}
