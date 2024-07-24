terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.58.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.4"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.31.0"
    }
  }

  backend "s3" {
    bucket = "terra-state-bucket-yantec"
    key    = "terraform/backend"
    region = "us-east-2"
  }

  required_version = "~> 1.9.2"
}
##
##
