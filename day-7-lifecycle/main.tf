resource "aws_instance" "name" {

       ami = "ami-0453ec754f44f9a4a"     #ami-0453ec754f44f9a4a
    instance_type = "t2.medium"
    key_name = "pp"

    tags = {
        Name="prasad_prabhakar_gavali" 
    }
# 
    # lifecycle {
    #    ignore_changes = [ tags,ami, ]
    # }
    
  
}