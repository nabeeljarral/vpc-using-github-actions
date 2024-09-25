module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  public_subnet_cidr   = var.public_subnet_cidr
  private_subnet_cidr  = var.private_subnet_cidr
  public_subnet_names  = var.public_subnet_names
  private_subnet_names = var.private_subnet_names
}


module "sg" {
    source = "./modules/sg"
    vpc_id = module.vpc.vpc_id
}



module "ec2" {
  source = "./modules/ec2"
  public_subnet_ids        = module.vpc.public_subnet_ids
  private_subnet_ids       = module.vpc.private_subnet_ids
  sg_id                    = module.sg.sg_id
 # Passing key pair names
  public_key_name       = module.public_key.key_name
  private_key_name      = module.private_key.key_name
 }


# Generate key for private instance (p1)
module "private_key" {
  source          = "./modules/key"
  key_name        = "p1"
  key_output_path = "./keys"
}

# Generate key for public instance (p2)
module "public_key" {
  source          = "./modules/key"
  key_name        = "p2"
  key_output_path = "./keys"
}