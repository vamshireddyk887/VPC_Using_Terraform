module "vpc" {
  source  = "../modules/vpc"
  region  = var.region
}

module "subnets" {
  source             = "../modules/subnet"
  vpc_id             = module.vpc.vpc_id
  igw_id             = module.vpc.internet_gateway_id
  subnet_cidr        = var.subnet_cidr
  availability_zone  = var.availability_zone
  subnet_name        = var.subnet_name
  nat_gateway_name   = var.nat_gateway_name
  destination_cidr   = var.destination_cidr
}


module "endpoints" {
  source = "../modules/endpoints"
  vpc_id = module.vpc.vpc_id  
  region = var.region
}