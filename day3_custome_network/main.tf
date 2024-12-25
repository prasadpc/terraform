resource "aws_vpc" "name" {

    cidr_block = "10.0.0.0/16"
    tags = {

      name = "public_vpc"
    }
  
}

resource "aws_subnet" "name1" {

    vpc_id = aws_vpc.name.id

    cidr_block = "10.0.0.0/24"

    tags = {
      Name="public1"
    }
  
}

resource "aws_internet_gateway" "ig" {

    vpc_id = aws_vpc.name.id

    tags = {
      name= "pubklic_ig" 
    }
  
}






resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.name.id
  tags = {
    Name = "PublicRouteTable"
  }
   route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.ig.id

}
}


resource "aws_route_table_association" "a" {

  subnet_id = aws_subnet.name1.id
  route_table_id = aws_route_table.public_rt.id
  
}



resource "aws_security_group" "sg" {
  name  = "securit_sg"  
  vpc_id = aws_vpc.name.id
  tags = {
    name ="security_group"
  }
    ingress {
      description = "inbound_roule"
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      

    }

    ingress {
       description = "to all_trafic"
       from_port = 0
       to_port = 0
       protocol = "-1"
       cidr_blocks = ["0.0.0.0/0"]

    }

    egress {

      description = "out-bound"
       from_port = 0
       to_port = 0
       protocol = "-1"
       cidr_blocks = ["0.0.0.0/0"]

    }
}