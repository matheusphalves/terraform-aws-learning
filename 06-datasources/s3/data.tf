data "terraform_remote_state" "server" {
  backend = "s3"

  config = {
    bucket = "tfstate-891377099859"
    key    = "tfstates/dev/06/state/terraform.tfstate"
    region = var.aws_region
  }
}
