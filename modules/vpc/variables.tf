variable "vpc_cidr" {
  description = "VPC CIDR Range"
  type = string
}



variable "public_subnet_cidr" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidr" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}

variable "public_subnet_names" {
  description = "List of names for public subnets"
  type        = list(string)
}

variable "private_subnet_names" {
  description = "List of names for private subnets"
  type        = list(string)
}


