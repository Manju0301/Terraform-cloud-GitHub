terraform {
    required_version = "~> 1.9.3" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.60.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-0427090fd1714168b" 
	instance_type = "t2.micro"
}
