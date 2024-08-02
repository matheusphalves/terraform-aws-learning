resource "random_pet" "random" {
  length = 5
}

resource "aws_s3_bucket" "bucket" {
  bucket = "my-instances-${random_pet.random.id}"
}

resource "aws_s3_object" "object" {

  bucket = aws_s3_bucket.bucket.bucket

  key = "instances/instances-${local.instance.ami}.json"

  source = "outputs.json"

  etag = filemd5("outputs.json")

  content_type = "application/json"
}
