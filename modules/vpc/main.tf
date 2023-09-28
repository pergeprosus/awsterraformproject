
provider "aws" {
  region = var.aws_region
}

# VPC Module
module "vpc" {
  source = "./modules/vpc"
}

# VPN Gateway Module
module "vpn_gateway" {
  source = "./modules/vpn-gateway"
}

# EC2 Module
module "ec2" {
  source = "./modules/ec2"
}
