
  ## This module block call the resources outside the folder ##

#   module "demo" {
#       source = "../ex-ec2-and-s3"
#        ami = "ami-0453ec754f44f9a4a"
#        key_name = "pp"
#        instance_type = "t2.micro"

    
  
#  }




## This module block call the git repo 

#  module "git-demo" {

#      source = "github.com/prasadpc/terraform-10-30am/day-2-basic-ec2"
#      ami = "ami-0453ec754f44f9a4a"
#      key_name = "pp"
#      instance_type = "t2.micro"
     


  
#  }




### --- this calling to terraform registry --- ###


module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "pp"
  monitoring             = true
  vpc_security_group_ids = ["sg-00453b72f0821ad9e"]
  subnet_id              = "subnet-0efe205a27a33efc8"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}