# Use this statement to define the value of the variables
aws_region        = "us-east-1"
aws_instance_ami  = "ami-0427090fd1714168b"
aws_instance_type = "t2.micro"
instance_tags = {
  "Name"        = "My EC2 Instance"
  "Project"     = "Learning Terraform concepts"
  "Environment" = "PRD"
}
