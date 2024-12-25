resource "aws_instance" "myvm" {
    ami = "ami-012967cc5a8c9f891"
    instance_type = "t2.nano"
    tags = {
      Name = "ec2"
    }
  
}

resource "aws_s3_bucket" "dev" {
    bucket = "importbucketdgscsgc"
  
}