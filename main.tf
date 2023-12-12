terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "cat_server" {
  ami           = "ami-049924d678af7a43b"
  instance_type = "t2.micro"
  key_name      = "Luiza_ssh_key"
  vpc_security_group_ids = ["sg-0e149e5b7226025b1"]
  

  tags = {
    Name = "CatServerInstance"
    Cat = "true"
  }
}
