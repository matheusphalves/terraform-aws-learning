resource "aws_s3_bucket" "my-bucket" {

  # Using interpolation to generate the bucket name
  bucket = "alfred-${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags

}

# This bucket has been created manually and then imported to be managed by terraform running the following command:
# terraform import aws_s3_bucket.manual-bucket alfred-manual-bucket-3007
resource "aws_s3_bucket" "manual-bucket" {
  bucket = "alfred-manual-bucket-3007"

  tags = {
    Type      = "Manual"
    ManagedBy = "Terraform"
  }
}

resource "aws_s3_object" "my-file" {

  bucket = aws_s3_bucket.my-bucket.bucket

  key = "config/${local.ip_file_path}"

  source = local.ip_file_path

  etag = filemd5(local.ip_file_path)
}
