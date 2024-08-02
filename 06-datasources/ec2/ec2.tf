resource "aws_instance" "web-server" {
  ami           = "ami-0427090fd1714168b"
  instance_type = var.instance_type
}