

// ec2 -> call module (name-for-ec2 ec2-1)

// ec2 -> call module (name-for-ec2 ec2-2)


module "ec2" {
  
  source = "./ec2"

  // Inputs
  ec2_instance_name = "My-Demo-Instance"
}

output "main_ec2_instance_id"{

  value = module.ec2.ec2_instance_id
}