variable "ami" {
    type = string
    default = "" #ami-01816d07b1128cd2d
  
}

variable "instance_type" {
    type = string
    default = "" #t2.micro
  
}

resource "aws_instance" "name" {

    ami = var.ami
    instance_type = var.instance_type 
     tags = {
       Name = "prasad"
     }
  
}


