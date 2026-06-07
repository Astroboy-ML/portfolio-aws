# Generated from existing CloudFront distribution
# Used for learning and reverse-engineering
# Will be refactored later

# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "E3CVRBTO9GU9Y6"
resource "aws_cloudfront_distribution" "portfolio" {
  aliases             = ["languille.site", "www.languille.site"]
  anycast_ip_list_id  = null
  comment             = "martin-languille-portfolio"
  default_root_object = "index.html"
  enabled             = true
  http_version        = "http2"
  is_ipv6_enabled     = true
  price_class         = "PriceClass_All"
  retain_on_delete    = false
  staging             = false
  tags = {
    Name = "martin-languille-portfolio"
  }
  tags_all = {
    Name = "martin-languille-portfolio"
  }
  wait_for_deployment = true
  web_acl_id          = "arn:aws:wafv2:us-east-1:903609216265:global/webacl/CreatedByCloudFront-e65c4512/bdc51f77-7dda-4362-9d35-958e05dd1c27"
  default_cache_behavior {
    allowed_methods            = ["GET", "HEAD"]
    cache_policy_id            = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods             = ["GET", "HEAD"]
    compress                   = true
    default_ttl                = 0
    field_level_encryption_id  = null
    max_ttl                    = 0
    min_ttl                    = 0
    origin_request_policy_id   = null
    realtime_log_config_arn    = null
    response_headers_policy_id = null
    smooth_streaming           = false
    target_origin_id           = "martin-languille-portfolio.s3.eu-west-3.amazonaws.com-mq3vmjz5gdq"
    trusted_key_groups         = []
    trusted_signers            = []
    viewer_protocol_policy     = "redirect-to-https"
    grpc_config {
      enabled = false
    }
  }
  origin {
    connection_attempts         = 3
    connection_timeout          = 10
    domain_name                 = "martin-languille-portfolio.s3.eu-west-3.amazonaws.com"
    origin_access_control_id    = "E3FVRCURQXS5A7"
    origin_id                   = "martin-languille-portfolio.s3.eu-west-3.amazonaws.com-mq3vmjz5gdq"
    origin_path                 = null
    response_completion_timeout = 0
  }
  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }
  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:903609216265:certificate/9536543c-3303-4539-aca3-55106cbe72a9"
    cloudfront_default_certificate = false
    iam_certificate_id             = null
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }
}
