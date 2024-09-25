variable "sg_id" {
  description = "SG ID for EC2"
  type = string
}

variable "public_subnet_ids" {
  description = "Subnets for EC2"
  type = list(string)
}

variable "private_subnet_ids" {
  description = "Subnets for EC2"
  type = list(string)
}


variable "ec2_names" {
  description = "List of EC2 instance names"
  type        = list(string)
  default     = ["web-public-1", "web-public-2", "web-private-3"]
}
variable "public_key_name" {
  description = "The key name for the public EC2 instances."
  type        = string
}

variable "private_key_name" {
  description = "The key name for the private EC2 instances."
  type        = string
}