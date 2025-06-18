resource "aws_ecr_repository" "flask" {
  name = var.flask_repo_name

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = var.flask_repo_name
  }
}

resource "aws_ecr_repository" "express" {
  name = var.express_repo_name

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = var.express_repo_name
  }
}
