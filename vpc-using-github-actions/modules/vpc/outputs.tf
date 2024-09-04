output "vpc_id" {
    value = aws_vpc.dev.id
}

output "subnet_ids" {
    value = aws_subnet.subnets.*.id
}


