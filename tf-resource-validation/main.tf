provider "hcp" {}

provider "aws" {
  region = var.region
}

resource "aws_instance" "app_server" {
  ami           = ""
  instance_type = "t2.micro"
  tags = {
    Name = "Learn-HCP-Packer"
  }
}
