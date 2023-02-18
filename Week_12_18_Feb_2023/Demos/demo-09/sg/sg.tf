variable "sg_name" {

  type = string

}

variable "ingress_ports" {

  type = list(number)

}

variable "egress_ports" {
  type = list(number)
}

resource "aws_security_group" "my_security_group" {

  name = var.sg_name

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
  
  
  dynamic "egress" {

    for_each = var.egress_ports
    iterator = egress_port

    content {
      cidr_blocks = [ "0.0.0.0/0" ]
      from_port = egress_port.value
      protocol = "TCP"
      to_port = egress_port.value
    }
  }
}

output "sg_arn" {
  value = aws_security_group.my_security_group.arn
}

output "sg_name" {
  value = aws_security_group.my_security_group.name
}