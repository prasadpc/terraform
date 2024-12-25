resource "aws_instance" "name" {
    key_name = "pp"
    instance_type = "t2.micro"
    ami = "ami-0453ec754f44f9a4a"
  
}