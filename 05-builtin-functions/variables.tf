variable "env" {}

variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_instance_ami" {
  type        = string
  description = ""
  default     = "ami-0427090fd1714168b"

  validation {
    condition     = length(var.aws_instance_ami) > 4 && substr(var.aws_instance_ami, 0, 4) == "ami-"
    error_message = "The aws_instance_ami value must be a valid AMI id, starting with \"ami-\""
  }
}

variable "aws_instance_number" {

  type = object({
    dev  = number
    prod = number
  })

  description = "Definition of the number EC2 instances to create"

  default = {
    dev  = 1
    prod = 2
  }

}

variable "aws_instance_type" {

  type = object({
    dev  = string
    prod = string
  })

  description = "Definition of EC2 instance type to create"

  default = {
    dev  = "t2.micro"
    prod = "t2.micro"
  }

}
