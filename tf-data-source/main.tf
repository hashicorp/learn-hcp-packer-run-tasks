provider "hcp" {}

data "hcp_packer_iteration" "ubuntu" {
  bucket_name = "learn-packer-run-tasks"
  channel     = "production"
}

data "hcp_packer_image" "ubuntu_us_east_2" {
  bucket_name    = "learn-packer-run-tasks"
  cloud_provider = "aws"
  iteration_id   = data.hcp_packer_iteration.ubuntu.ulid
  region         = "us-east-2"
}