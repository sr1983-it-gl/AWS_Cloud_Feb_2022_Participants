

provider "aws"{

  region = "us-east-1"

}

variable "vpc_name" {
  type = string
  default = "demo-vpc"

}

resource "aws_vpc" "my_vpc" {
  
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = var.vpc_name
  }
}

output "vpc_arn" {
  value = aws_vpc.my_vpc.arn
}

output "vpc_id"{
  value = aws_vpc.my_vpc.id
}