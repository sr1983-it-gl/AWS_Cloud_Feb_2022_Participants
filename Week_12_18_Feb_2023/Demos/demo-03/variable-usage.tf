

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
    // ${var.vpc_name}
  }
}