# Generate SSH Key Pair
resource "tls_private_key" "key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

# Save the private key to a specific location
resource "local_file" "private_key_file" {
  content  = tls_private_key.key.private_key_pem
  filename = "${var.key_output_path}/${var.key_name}_private.pem"
}

# Save the public key to a specific location
resource "local_file" "public_key_file" {
  content  = tls_private_key.key.public_key_openssh
  filename = "${var.key_output_path}/${var.key_name}_public.pem"
}

# AWS Key Pair to associate with EC2 instances
resource "aws_key_pair" "key_pair" {
  key_name   = var.key_name
  public_key = tls_private_key.key.public_key_openssh
}
