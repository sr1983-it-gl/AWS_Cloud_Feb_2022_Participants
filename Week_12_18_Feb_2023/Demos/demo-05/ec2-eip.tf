provider "aws"{

  region = "us-east-1"

}

resource "aws_instance" "ec2-instance-1"{

  ami = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2-Instance-1"
  }
}

resource "aws_instance" "ec2_web_server"{

  ami = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2-Web-Server"
  }
}

resource "aws_eip" "my_eip" {
  instance = aws_instance.ec2_web_server.id
}

output "eip_public_ip" {
  value = aws_eip.my_eip.public_ip
}