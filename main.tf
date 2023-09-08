variable hosted_id { type = string }

module "ssl-cert" {
  source = "terraform-aws-modules/acm/aws"
  version = "4.3.2"

  domain_name = "blabla.com"
  zone_id = var.hosted_id
}
