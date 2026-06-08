variable "bucket_name" {
  description = "Nom du bucket S3 du portfolio"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID"
  type        = string
  default     = "2bcc8a0bf8a8c42bff40d14e7346581c"
}