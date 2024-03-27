# Call the previously defined vpc module and take the vpc_cidr from the same module without hardcoding

module "vpc" {
  source = "../modules/vpc"
}


module "public_subnet_1" {
  source = "../modules/subnet"
  vpc_id = module.vpc.vpc_id
  subnet_cidr = var.private_subnet_1_cidr
  availability_zone = var.availability_zone_1
}

module "public_subnet_2" {
  source = "../modules/subnet"
  vpc_id = module.vpc.vpc_id
  subnet_cidr = var.public_subnet_2_cidr
  availability_zone = var.availability_zone_2
}

module "private_subnet_1" {
  source = "../modules/subnet"
  vpc_id = module.vpc.vpc_id
  subnet_cidr = var.private_subnet_1_cidr
  availability_zone = var.availability_zone_1
}

module "private_subnet_2" {
  source = "../modules/subnet"
  vpc_id = module.vpc.vpc_id
  subnet_cidr = var.private_subnet_2_cidr
  availability_zone = var.availability_zone_2
}