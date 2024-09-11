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

# terraform {
#   cloud {

#     organization = "morningstardemo"

#     workspaces {
#       name = "morningstar-terraform"
#     }
#   }
# }


terraform {
  cloud {
    organization = "morningstardemo"
    ## Required for Terraform Enterprise; Defaults to app.terraform.io for Terraform Cloud
    hostname = "app.terraform.io"

    workspaces {
      tags = ["morningstar"]
    }
  }
}
resource "aws_s3_bucket" "b3415" {
  bucket = "morningstar-cloudbucket31431"
}

resource "aws_s3_bucket" "b1224" {
  bucket = "morningstar-cloudbucket5121"
}
