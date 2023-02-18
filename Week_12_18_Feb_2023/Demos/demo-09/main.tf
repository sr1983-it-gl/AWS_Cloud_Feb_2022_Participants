
provider "aws" {
  region = "us-east-1"
}

// EC2 Moduule - Start

  module "ec2" {
    
    source = "./ec2"

    ec2_instance_name = "Demo-EC2-Instance"
  }
// EC2 Moduule - End
