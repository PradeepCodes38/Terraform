provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_id = "ami-007020fd9c84e18c7"
  instance_type ="t2.micro"
  
}