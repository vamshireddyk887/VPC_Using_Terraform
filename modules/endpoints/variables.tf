variable "region" {
  description = "The region in which the VPC will be created"
  type = string
  default = "us-east-1"
}
#take vpc id from vpc created in vpc module
variable "vpc_id" {
  description = "The ID of the VPC where the subnets will be created."
}