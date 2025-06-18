module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr
  azs         = var.availability_zones
  subnet_cidrs = var.subnet_cidrs
}

module "security" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
}

module "alb" {
  source       = "./modules/alb"
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.public_subnet_ids
  back_sg_id   = module.security.backend_sg_id
  front_sg_id  = module.security.frontend_sg_id
}


module "ecr" {
  source = "./modules/ecr"
}

module "task_definitions" {
  source             = "./modules/task_definitions"
  task_exec_role     = "arn:aws:iam::<account_ID>:role/ecsTaskExecutionRole"
  backend_image_url  = "<Back_image_URL>
  mongo_uri          = "mongodb+srv://<user>:<password>@<DNS>/?retryWrites=true&w=majority&appName=flask"
  db_name            = "flaskDB"
  collection_name    = "docker_form"
  frontend_image_url = "<Front_image_URL>"
  backend_url        = "http://${module.alb.backend_alb_dns}/submit"
}

module "ecs" {
  source            = "./modules/ecs"
  cluster_name      = "flask-express-cluster"
  subnet_ids        = module.vpc.public_subnet_ids
  front_sg_id       = module.security.frontend_sg_id
  back_sg_id        = module.security.backend_sg_id
  express_tg_arn    = module.alb.express_tg_arn
  flask_tg_arn      = module.alb.flask_tg_arn
  frontend_task_def = module.task_definitions.frontend_task_arn
  backend_task_def  = module.task_definitions.backend_task_arn

  depends_on = [
    module.task_definitions,
    module.alb
  ]
}

