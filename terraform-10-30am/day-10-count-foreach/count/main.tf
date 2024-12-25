# create instance 

resource "aws_instance" "dev" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    count = length(var.sandboxes)
    tags = {
    #   Name = "web"
    #   Name = "web-${count.index}"
        Name = var.sandboxes[count.index]
    }

}

variable "sandboxes" {
  type    = list(string)
  default = [ "dev", "prod"]
}