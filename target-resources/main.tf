resource "aws_s3_bucket" "name" {
    bucket = "dkjfdkfjdkkfjkjdfkjdkoojf"
  
}

resource "aws_instance" "name2" {
    instance_type = "t2.micro"
    key_name = "pp"
    ami = "ami-0453ec754f44f9a4a"
 


  
}
resource "aws_s3_bucket" "name3" {
    bucket = "dkjfdkfjdkkfjkjdfkjdkjfpp"
  
}

resource "aws_instance" "name4" {
    instance_type = "t2.micro"
    key_name = "pp"
    ami = "ami-0453ec754f44f9a4a"


    tags = {

       Name="prasad" 
    }



  
}