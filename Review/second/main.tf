resource "aws_s3_bucket_object" "bucket_object" {
  bucket     = data.terraform_remote_state.s3_state.outputs.s3_bucket_id
  key        = "test-key.txt"
  source     = "test.txt"
  
}