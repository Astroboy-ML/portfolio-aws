resource "cloudflare_dns_record" "root" {
  zone_id = var.cloudflare_zone_id

  name    = "@"
  type    = "CNAME"
  content = aws_cloudfront_distribution.portfolio.domain_name
  proxied = false
  ttl     = 1
}

resource "cloudflare_dns_record" "www" {
  zone_id = var.cloudflare_zone_id

  name    = "www"
  type    = "CNAME"
  content = aws_cloudfront_distribution.portfolio.domain_name
  proxied = false
  ttl     = 1
}

resource "cloudflare_dns_record" "acm_validation" {
  for_each = {
    for dvo in aws_acm_certificate.portfolio.domain_validation_options : dvo.domain_name => {
      name  = dvo.resource_record_name
      type  = dvo.resource_record_type
      value = dvo.resource_record_value
    }
  }

  zone_id = var.cloudflare_zone_id

  name    = trimsuffix(each.value.name, ".")
  type    = each.value.type
  content = trimsuffix(each.value.value, ".")
  ttl     = 1
  proxied = false
}