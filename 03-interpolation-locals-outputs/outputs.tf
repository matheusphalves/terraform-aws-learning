output "bucket_name" {
  value = aws_s3_bucket.my-bucket.bucket
}

output "bucket_arn" {
  value       = aws_s3_bucket.my-bucket.arn
  description = ""
}

output "bucket_domain_name" {
  value       = aws_s3_bucket.my-bucket.bucket_domain_name
  description = ""
}

output "ips_file_path" {
  value = "${aws_s3_bucket.my-bucket.bucket}/${aws_s3_object.my-file.key}"
}
