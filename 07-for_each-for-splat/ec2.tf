data "aws_ami" "ubuntu" {
  owners = ["amazon"]

  most_recent = true

  name_regex = "ubuntu"

  filter {
    name = "architecture"

    values = ["x86_64"]
  }
}

resource "aws_instance" "this" {

  for_each = {
    "web" = {
      name = "Web Server"
      type = var.instance_type
    }

    "CICD" = {
      name = "CI CD Server"
      type = var.instance_type
    }
  }

  # ami = data.aws_ami.ubuntu
  ami = "ami-0427090fd1714168b"

  instance_type = lookup(each.value, "type", null)

  tags = {

    Project = "Learning Terraform and AWS"

    Name = "${each.key}: ${lookup(each.value, "name", null)}"

    Class = "Learning Foreach, For and Splat operators"

  }
}
