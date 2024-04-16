# Specify the AWS provider and region
provider "aws" {
  region = "ap-south-1"  # Change this to your desired AWS region
}

# Define the EC2 instance resource
resource "aws_instance" "my_instance" {
  ami           = "ami-007020fd9c84e18c7"  # Free-tier AMI (Amazon Linux 2 in us-east-1)
  instance_type = "t2.micro"               # Free-tier eligible instance type

  tags = {
    Name = "MyEC2Instance"  # Change the instance name as needed
  }
}
