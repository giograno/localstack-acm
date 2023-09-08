# provider "aws" {
#   access_key                  = "mock_access_key"
#   secret_key                  = "mock_secret_key"
#   region                      = "us-east-1"
#   s3_use_path_style           = true
#   skip_credentials_validation = true
#   skip_metadata_api_check     = true
#   skip_requesting_account_id  = true

#   endpoints {
#     route53        = "http://localhost:4566"
#     acm            = "http://localhost:4566"
#   }
# }

module "ssl-cert" {
  source = "terraform-aws-modules/acm/aws"
  version = "4.3.2"

  domain_name = "blabla.com"
  zone_id = "/hostedzone/VVFU9S0V11WHXP4"
}