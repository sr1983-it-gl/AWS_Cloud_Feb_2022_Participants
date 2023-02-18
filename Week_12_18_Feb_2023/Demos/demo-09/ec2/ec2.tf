
variable "ec2_instance_name" {
  type = string
}

  // Security Group Creation - START

    module "sg" {
      
      source = "../sg"

      sg_name = "Web_Security_Group"
      ingress_ports = [80, 8080, 443]
      egress_ports = [80, 8080, 443]

    }

  // Security Group Creation - END

resource "aws_instance" "ec2_web_server"{

  ami = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  security_groups = [module.sg.sg_name]

  tags = {
    Name = var.ec2_instance_name
  }
}


  // EIP Module - Start 

  module "eip"{

    source = "../eip"

    attach_ec2_instance_id = aws_instance.ec2_web_server.id
  }

  // EIP Module - End

output "ec2_instance_id" {
  value = aws_instance.ec2_web_server.id
}
