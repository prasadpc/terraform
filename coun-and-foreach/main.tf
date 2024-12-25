resource "aws_instance" "name" {

    instance_type = "t2.medium"
    key_name = "pp"
    ami = "ami-01816d07b1128cd2d"
    count = "2"
  
}