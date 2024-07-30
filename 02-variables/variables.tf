variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_instance_ami" {
  type        = string
  description = ""
  default     = "ami-0427090fd1714168b"
}

variable "aws_instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}


variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    "Name"        = "My EC2 Instance"
    "Project"     = "Learning Terraform concepts"
    "Environment" = "DEV"
  }
}
