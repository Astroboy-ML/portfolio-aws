terraform {
  backend "s3" {
    bucket       = "martin-languille-terraform-state"
    key          = "portfolio-aws/terraform.tfstate"
    region       = "eu-west-3"
    use_lockfile = true
  }
}