resource "aws_s3_bucket" "portfolio" {
  bucket = var.bucket_name

  tags = {
    Project = "portfolio-aws"
    Owner   = "Martin Languillé"
  }
}
