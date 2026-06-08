resource "aws_s3_bucket" "portfolio" {
  bucket = var.bucket_name

  tags = {
    Project = "portfolio-aws"
    Owner   = "Martin Languillé"
  }
}

resource "aws_cloudfront_origin_access_control" "portfolio" {
  name                              = "oac-martin-languille-portfolio.s3.eu-west-3.amazonaw-mq3voachhh6"
  description                       = "Created by CloudFront"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}
