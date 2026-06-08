resource "aws_acm_certificate" "portfolio" {
  provider = aws.us_east_1

  domain_name = "languille.site"

  subject_alternative_names = [
    "www.languille.site"
  ]

  validation_method = "DNS"

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Project = "portfolio-aws"
    Owner   = "Martin Languillé"
  }
}

resource "aws_acm_certificate_validation" "portfolio" {
  provider = aws.us_east_1

  certificate_arn = aws_acm_certificate.portfolio.arn

  validation_record_fqdns = [
    for record in cloudflare_dns_record.acm_validation : record.name
  ]
}