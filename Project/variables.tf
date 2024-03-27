
# AWS related variables
variable "region" {
  description = "The region in which the VPC will be created."
  type        = string
}

variable "availability_zone_1" {
  description = "The availability zone where the subnet will be created"
  type        = string
  default = "us-east-1a"
}

variable "availability_zone_2" {
  description = "The availability zone where the subnet will be created"
  type        = string
  default     = "us-east-1b"
}

# VPC variables
variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "instance_tenancy" {
  description = " A tenancy option for instances launched into the VPC. Default is default"
  type        = string
}
variable "enable_dns_support" {
  description = "Whether or not the VPC has DNS support"
  type        = bool
}
variable "enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support"
  type        = bool
  
}

# Subnet variables
variable "public_subnet_1_cidr" {
  description = "The CIDR block for the public subnet 1"
  type        = string
  default     = "10.0.0.0/19"
}

variable "private_subnet_1_cidr" {
  description = "The CIDR block for the private subnet 1"
  type        = string
  default     = "10.0.64.0/18"
}

variable "public_subnet_2_cidr" {
  description = "The CIDR block for the public subnet 2"
  type        = string
  default     = "10.0.32.0/19"
}

variable "private_subnet_2_cidr" {
  description = "The CIDR block for the private subnet 2"
  type        = string
  default     = "10.0.128.0/17"
}

variable "public_subnet_1_name" {
  description = "The name of the public subnet 1"
  type        = string
  default     = "public_subnet_1"
}

variable "private_subnet_1_name" {
  description = "The name of the private subnet 1"
  type        = string
  default     = "private_subnet_1"
}

variable "public_subnet_2_name" {
  description = "The name of the public subnet 2"
  type        = string
  default     = "public_subnet_2"
}

variable "private_subnet_2_name" {
  description = "The name of the private subnet 2"
  type        = string
  default     = "private_subnet_2"
}
