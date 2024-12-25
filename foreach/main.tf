

resource "aws_instance" "name" {
  instance_type = "t2.medium"
  key_name      = "pp"
  ami           = "ami-01816d07b1128cd2d"

  for_each = toset(var.san)

  tags = {
    Name = each.value
  }
}


variable "san" {
  type    = list(string)
  default = ["deva", "likea"]
}