terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}

provider "aws" {
  access_key = var.akey
  secret_key = var.skey
  region     = var.location
  
}

terraform {
  cloud {

    organization = "morningstardemo"

    workspaces {
      name = "dev"
    }
  }
}

resource "aws_s3_bucket" "b1" {
  bucket = "morningstar-cloudbucket"
}