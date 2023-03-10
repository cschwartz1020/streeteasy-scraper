terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


resource "aws_ecr_repository" "streeteasy-scraper" {
    name = "streeteasy-scraper"
}

resource "aws_s3_bucket" "open_vpn_packages" {
    bucket          = "open-vpn-packages"
    force_destroy   = true
}