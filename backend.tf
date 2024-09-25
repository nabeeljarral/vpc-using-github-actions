terraform {
backend "s3" {
    bucket = "cloudcore0072"
    key    = "dev/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "backend"
  }
}
