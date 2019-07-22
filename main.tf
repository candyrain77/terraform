


# Terraform state will be stored in S3
terraform {
  backend "s3" {
    bucket = "terraform-bucket-vira"
    key    = "module-vpc-1-terraform.tfstate"
    region = "eu-west-1"
  }
}

module "vpc_1" {
  source = "./modules/network/vpc"
  
  vpc_cidr_block = "10.80.2.0/24"
  vpc_booleantrue = true
  tag_vpc_name = "test-vira"
  tag_vpc_region = "eu-central-1"
}


