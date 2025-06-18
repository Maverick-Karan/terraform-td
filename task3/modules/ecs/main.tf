resource "aws_ecs_cluster" "main" {
  name = var.cluster_name
}


# EXPRESS Service
resource "aws_ecs_service" "express" {
  name            = "express-service"
  cluster         = aws_ecs_cluster.main.id
  launch_type     = "FARGATE"
  desired_count   = 1
  task_definition = var.frontend_task_def

  network_configuration {
    subnets         = var.subnet_ids
    security_groups = [var.front_sg_id]
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = var.express_tg_arn
    container_name   = "express"
    container_port   = 3000
  }

  depends_on = [var.express_tg_arn]
}

# FLASK Service
resource "aws_ecs_service" "flask" {
  name            = "flask-service"
  cluster         = aws_ecs_cluster.main.id
  launch_type     = "FARGATE"
  desired_count   = 1
  task_definition = var.backend_task_def

  network_configuration {
    subnets         = var.subnet_ids
    security_groups = [var.back_sg_id]
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = var.flask_tg_arn
    container_name   = "flask"
    container_port   = 5000
  }

  depends_on = [var.flask_tg_arn]
}
