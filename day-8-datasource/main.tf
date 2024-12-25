data "aws_subnet" "name1" {
    filter {
        name = "tag:Name"
        values = [ "prasad" ]
      
    }
  
}







resource "aws_instance" "name" {

    ami = "ami-0453ec754f44f9a4a"
    key_name = "pp"
    instance_type = "t2.micro"
    subnet_id = data.aws_subnet.name1.id
  
}