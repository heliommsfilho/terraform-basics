resource "aws_s3_bucket" "remote_state" {
  force_destroy = true
  bucket = "heliommsfilho-terraform-remote-state-bucket"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.remote_state.id

  versioning_configuration {
    status = "Enabled"
  }
}
