variable "create" {
    default = "true"
    type = bool
  
}

resource "aws_instance" "name" {


    count = var.create ? 1:0
    instance_type = "t2.micro"
    ami = "ami-01816d07b1128cd2d"

  
}

