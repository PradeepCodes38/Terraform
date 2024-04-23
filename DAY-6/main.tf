provider "aws" {
  region = "ap-south-1"
}

provider "vault" {
  address = "http://13.127.175.228:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "55fe591c-af90-bbb6-31e4-b3c7e5c49daa"
      secret_id = "1aac7b27-6f77-0876-0547-e99beee4489a"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv"
  name = "test-secret"
}
resource "aws_instance" "example" {
  ami = "ami-007020fd9c84e18c7"
  instance_type = "t2.micro"

  tags = {
    secret =data.vault_kv_secret_v2.example.data["username"]
  }
}