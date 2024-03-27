
variable "vpc_id" {
  description = "The VPC ID"
  type        = string
  default = ""
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.0.0/24"
}


variable "availability_zone" {
  description = "The availability zone"
  type        = string
  default     = "us-east-1a"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "my_subnet"
}

