provider "aws" {

    region = "us-east-1"
    alias = "prasad"
  
}

provider "aws" {
    region = "ap-south-1"
    alias = "pro"
  
}


resource "aws_instance" "name1" {
    instance_type = "t2.micro"
    key_name = "pp"
    ami = "ami-0453ec754f44f9a4a"

    provider = aws.prasad
 


  
}



resource "aws_instance" "name2" {
    instance_type = "t2.micro"
    key_name = "p"
    ami = "ami-0614680123427b75e"
    provider = aws.pro
 


  
}


