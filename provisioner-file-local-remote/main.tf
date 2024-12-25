
provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "name" {
    ami = "ami-0e2c8caa4b6378d8c"
    key_name = "pp"
    instance_type = "t2.medium"



    connection {
    type        = "ssh"
    user        = "ubuntu"                # The user on the remote machine
    private_key = file("~/.ssh/id_ed25519")   # Path to your private key for SSH access
    host        = self.public_ip         # The public IP of the instance
  }



    provisioner "local-exec" {

        command = "touch file100"
      
    }


    provisioner "file" {
        source = "prasad.txt"
        destination = "/home/ubuntu/prasad.txt"
      
    }


    provisioner "remote-exec" {
        inline = [ "touch file1",
         "echo helllo form aws >> file1", ]

        
      
    }


    

  
}