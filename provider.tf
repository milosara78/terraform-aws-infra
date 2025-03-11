terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}


# Configure the S3 backend
terraform {
  backend "s3" {
    bucket         = "xxx" # Replace with your S3 bucket name
    key            = "xxxx"           # Path to the state file inside the bucket
    region         = "us-east-1"                 # AWS region where the bucket is located
    encrypt        = true                        # Encrypt the state file 
  }
}
