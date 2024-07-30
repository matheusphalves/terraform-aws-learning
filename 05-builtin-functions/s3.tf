resource "random_pet" "bucket" {
  length = 5
}

resource "aws_s3_bucket" "my-bucket" {
  
  bucket = "${random_pet.bucket.id}-${var.env}"

  tags = local.common_tags
}

resource "aws_s3_object" "my-bucket-object" {
  
  bucket = aws_s3_bucket.my-bucket.bucket

  key = "${uuid()}.${local.file_extension}"

  source = data.archive_file.json.output_path

  etag = filemd5(data.archive_file.json.output_path)

  content_type = "application/zip"

  tags = local.common_tags
}