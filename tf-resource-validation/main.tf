provider "aws" {
  region = var.region
}

resource "aws_instance" "app_server" {
  ami           = "ami-039af3bfc52681cd5"
  instance_type = "t2.micro"
  tags = {
    Name = "Learn-HCP-Packer"
  }
}
