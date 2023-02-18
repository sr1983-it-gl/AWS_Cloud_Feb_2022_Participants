provider "aws"{
  region = "us-east-1"
}


resource "aws_instance" "ec2_web_server"{

  ami = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.web_security_group.name]

  tags = {
    Name = "EC2-Web-Server"
  }
}

variable "ingress_ports" {

  type = list(number)
  default = [ 22, 80, 443, 4444, 5555 ]
  
}

resource "aws_security_group" "web_security_group" {

  name = "Allow_SSH_HTTP_Traffic-2"

  dynamic "ingress" {

    for_each = var.ingress_ports
    iterator = ingress_port

    content {
      cidr_blocks = [ "0.0.0.0/0" ]
      from_port = ingress_port.value
      protocol = "TCP"
      to_port = ingress_port.value
    }

  }
  
  
  egress {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 80
    protocol = "TCP"
    to_port = 80
  } 

}