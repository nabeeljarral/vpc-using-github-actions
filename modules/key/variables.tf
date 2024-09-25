variable "key_name" {
  description = "The name of the key pair."
  type        = string
}

variable "key_output_path" {
  description = "The path where the keys should be stored."
  type        = string
  default     = "./keys"
}
