locals {
  instance_number = lookup(var.aws_instance_number, var.env)

  file_extension = "zip"

  object_name = "file-generated-by-template"

  common_tags = {
    "Owner" = "Alfred"
    "Year"  = "2024"
  }
}
