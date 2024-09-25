output "key_name" {
  value = aws_key_pair.key_pair.key_name
}

output "private_key_path" {
  value = local_file.private_key_file.filename
}

output "public_key_path" {
  value = local_file.public_key_file.filename
}
