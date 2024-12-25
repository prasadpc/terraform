module "devtest" {
    # source = "github.com/CloudTechDevOps/terraform-10-30am/day-2-basic-ec2"
    ami = "ami-0440d3b780d96b29d"
    instance_type ="t2.micro"
    key_name = "newkey"


  
}