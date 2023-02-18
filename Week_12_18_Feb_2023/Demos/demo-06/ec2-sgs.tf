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

resource "aws_security_group" "web_security_group" {

  name = "Allow_SSH_HTTP_Traffic"

  ingress {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 80
    protocol = "TCP"
    to_port = 80
  }

  ingress {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 22
    protocol = "TCP"
    to_port = 22
  }  
  
  
  egress {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 80
    protocol = "TCP"
    to_port = 80
  } 

}