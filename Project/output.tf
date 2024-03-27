# Create a output variable to capture the vpc_id from vpc module
output "vpc_id" {
  value = module.vpc.vpc_id
}

# Create a output variable to capture the internet gateway id from vpc module
output "igw_id" {
  value = module.vpc.internet_gateway_id
}

# Create a output variable to capture the public subnet 1 id from public_subnet_1 module
output "public_subnet_1_id" {
  value = module.public_subnet_1.subnet_id
}

# Create a output variable to capture the public subnet 2 id from public_subnet_2 module
output "public_subnet_2_id" {
  value = module.public_subnet_2.subnet_id
}

# Create a output variable to capture the private subnet 1 id from private_subnet_1 module
output "private_subnet_1_id" {
  value = module.private_subnet_1.subnet_id
}

# Create a output variable to capture the private subnet 2 id from private_subnet_2 module
output "private_subnet_2_id" {
  value = module.private_subnet_2.subnet_id
}
