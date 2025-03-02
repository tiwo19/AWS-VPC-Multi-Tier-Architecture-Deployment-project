provider "aws" {
  region = "us-east-1"
}

module "servers" {
  source            = "./modules/ec2"
  ami_id            = "ami-05b10e08d247fb927"
  instance_type     = "t2.micro"
  subnet_id         = module.vpc.subnet_private_1
  sgec2_1           = module.SecGroup.sg_ec2_1
  security_group_id = module.SecGroup.sg_ec2_1
  desired_capacity  = 2
  max_size          = 3
  min_size          = 1
  subnet_ids        = [module.vpc.subnet_private_1]
   web_tg_arn       = module.alb.web_tg_arn
}

module "vpc" {
  source = "./modules/vpc"

}
module "SecGroup" {

  source = "./modules/sg"
  vpc_id = module.vpc.vpc_1


}
module "alb" {
  source    = "./modules/alb"
  subnet_id = module.vpc.subnet_1
  sgalb_1   = module.SecGroup.sg_alb_1
  vpc_id            = module.vpc.vpc_1
  

}
module "db" {
  source               = "./modules/rds"
  db_name              = "mydatabase"
  db_username          = "admin"
  db_password          = "password"
  db_security_group_id = module.SecGroup.sg_db_1
  db_subnet_group      = "main"
  subnet_ids           = [module.vpc.subnet_private_1]
}