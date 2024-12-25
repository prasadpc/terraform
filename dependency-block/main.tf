resource "aws_s3_bucket" "name" {
    bucket = "dkjfdkfjdkkfjkjdfkjdkjf"
  
}

resource "aws_instance" "name2" {
    instance_type = "t2.micro"
    key_name = "pp"
    ami = "ami-0453ec754f44f9a4a"
   # depends_on = [ aws_s3_bucket.name.bucket ]


  
}