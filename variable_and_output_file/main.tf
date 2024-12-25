resource "aws_instance" "prasad" {
    ami = var.ami_type
    key_name = var.key_name
    instance_type = var.instance_type

    tags = {
        name = "prasadlkl"
    }
  
}