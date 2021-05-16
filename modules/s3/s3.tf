resource "aws_s3_bucket" "main_bucket" {
  bucket = "${var.env}-max-ivashko"
  acl    = "private"

  tags = local.tags
}

resource "aws_s3_bucket_public_access_block" "bucket_policy" {
  bucket = aws_s3_bucket.main_bucket.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}