variable "ami_type" {
    default = "ami-0614680123427b75e"
    description = "theis is the ami id "
    type = string
  
}

variable "key_name" {
    default = "p"
    description = "this the key of ec2 instance"
    type = string
  
}

variable "instance_type" {
    default = "t2.small"
    description = "this the instance type is t2.small"
    type = string
  
}