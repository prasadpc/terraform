provider "aws" {
  region = "us-east-1"
  
}

locals {
  region = "us-east-1"
  # environment = "dev"
  instance_type = "t2.micro"
  ami = "ami-01816d07b1128cd2d"
}

resource "aws_instance" "example" {
  ami           = local.ami # Amazon Linux 2 AMI
  instance_type = local.instance_type

  tags = {
    Name        = "ExampleInstance"
    # Environment = local.environment
  }
}