terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.56.0"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

terraform {
  backend "s3" {
    bucket = "shivanew1112"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
