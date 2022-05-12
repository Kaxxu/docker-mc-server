terraform {
  required_version = "1.1.9"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Yutani"

    workspaces {
      name = "docker-mc-server"
    }
  }

  required_providers {
    aws = {
      version = "4.13.0"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-west-1"

  default_tags {
    tags = {
      "organization" = "Kaxxu"
      "repo"         = "docker-mc-server"
      "environment"  = "Priv"
      "platform"     = "Minecraft"
    }
  }
}
