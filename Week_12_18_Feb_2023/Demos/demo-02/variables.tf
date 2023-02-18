
variable "ec2_instance_name" {
  
  type = string
  default = "My-EC2-Instance"
}

variable "http_port" {
  
  type = number
  default = 80
}

variable "adminOrNot" {
  
  default = true
}

variable "security_group_names" {
  
  type = list(string)
  default = [ "http_sg", "ssh_sg", "https_sg" ]

}

variable "tags" {
  type = map

  default = {
    Name = "MyValue-1"
    CreatedBy = "Cloud Formation Template"
  }

}