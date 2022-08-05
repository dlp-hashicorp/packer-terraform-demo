terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.23.1"
    }
    aws = {
      source = "hashicorp/aws"
    }
  }

  cloud {
    organization = "ericreeves-demo"
    # For Terraform Enterprise, replace this with the hostname of your TFE instance
    hostname = "app.terraform.io"

    workspaces {
      name = "tfc-packer-demo"
    }
  }
}
