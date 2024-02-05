# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

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
