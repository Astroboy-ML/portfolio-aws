resource "aws_s3_bucket" "terraform_state" {
  bucket = "martin-languille-terraform-state"

  tags = {
    Project = "portfolio-aws"
    Purpose = "terraform-state"
    Owner   = "Martin Languillé"
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}