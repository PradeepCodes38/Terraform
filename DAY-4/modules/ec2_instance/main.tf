resource "aws_instance" "Example" {
  ami = var.ami_id
  instance_type = var.instance_type
}