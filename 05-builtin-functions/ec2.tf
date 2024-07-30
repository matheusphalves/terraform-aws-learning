resource "aws_instance" "server" {
    
  count = local.instance_number <= 0 ? 0 : local.instance_number

  ami = var.aws_instance_ami

  instance_type = lookup(var.aws_instance_type, var.env)

  tags = merge(
    local.common_tags,
    {
      Project = "Learning Terraform and AWS concepts"
      Env     = format("%s", var.env)
      Name    = format("Instance %d", count.index + 1)
    }
  )
}
