terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.21.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "4.2.0"
    }
  }

  cloud {
    organization = "hashicorp-training"
    hostname     = "app.terraform.io"

    workspaces {
      name = "learn-hcp-packer-run-tasks-data-source-validation"
    }
  }
}