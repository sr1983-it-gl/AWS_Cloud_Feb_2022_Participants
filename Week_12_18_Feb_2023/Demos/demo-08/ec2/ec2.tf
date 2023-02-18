
variable "ec2_instance_name" {
  type = string
}

resource "aws_instance" "ec2_web_server"{

  ami = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"

  tags = {
    Name = var.ec2_instance_name
  }
}

output "ec2_instance_id" {
  value = aws_instance.ec2_web_server.id
}
