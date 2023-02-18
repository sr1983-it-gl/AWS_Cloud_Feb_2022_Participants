variable "attach_ec2_instance_id" {
  type = string
}

resource "aws_eip" "my_eip" {
  instance = var.attach_ec2_instance_id
}

output "eip_public_ip" {
  value = aws_eip.my_eip.public_ip
}