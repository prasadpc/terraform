resource "aws_instance" "name" {
    instance_type = var.instance_type
    key_name = var.key_name
    ami = var.ami
  
}