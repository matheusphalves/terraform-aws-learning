output "file_extensions" {
  value = local.file_extensions
}

output "instance_extensions_upper" {
  value = local.file_extensions_upper
}

output "instance_arns" {
  value = [for key, value in aws_instance.this: value.arn]
}

output "instance_names" {
  value = {for key, value in aws_instance.this: key => value.tags.Name}
}

output "private_ips" {
  value = [for ip in local.ips: ip.private]
}

# Usage of Splat operator
output "public_ips" {
  value = local.ips[*].public
}