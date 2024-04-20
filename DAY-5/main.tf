provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "simple" {
  ami = "ami-007020fd9c84e18c7"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "Bucket" {
  bucket = "buucketwala"
}