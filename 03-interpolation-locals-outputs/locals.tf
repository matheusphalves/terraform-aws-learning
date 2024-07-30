locals {

  ip_file_path = "ips.json"

  common_tags = {
    Name        = "My Bucket"
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = "Alfred"
    UpdatedAt   = "2024-07-29"
  }
}
