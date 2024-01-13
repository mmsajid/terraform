terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}


resource "aws_instance" "app_server" {
  ami           = "ami-0905a3c97561e0b69"
  instance_type = "t2.micro"
  
  tags = {
    Name = "AppServer"
  }
}
